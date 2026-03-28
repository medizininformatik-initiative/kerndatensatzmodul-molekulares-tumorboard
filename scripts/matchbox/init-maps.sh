#!/usr/bin/env sh
# Loads all DNPM LogicalModel StructureDefinitions and FML StructureMaps into Matchbox.
# Uses wget (no curl in the matchbox base image).

BASE="http://localhost:8080/matchboxv3/fhir"
MAPS_DIR="/maps"
SD_DIR="/structuredefinitions"

echo "=== Waiting for Matchbox to be ready ==="
until wget -q -O /dev/null "$BASE/metadata" 2>/dev/null; do
  echo "  not ready yet, retrying..."
  sleep 3
done
echo "Matchbox is ready."

# Helper: POST/PUT with wget and return HTTP status
http_post() {
  url="$1"
  content_type="$2"
  file="$3"
  out="/tmp/http-result.json"
  # wget doesn't easily return status code; use --server-response and parse
  wget -q -O "$out" \
    --post-file="$file" \
    --header="Content-Type: $content_type" \
    --header="Accept: application/fhir+json" \
    "$url" 2>/tmp/http-headers.txt
  rc=$?
  if [ $rc -eq 0 ]; then
    echo "201"
  else
    # Try to extract HTTP status from stderr
    grep "HTTP/" /tmp/http-headers.txt 2>/dev/null | tail -1 | awk '{print $2}' || echo "000"
  fi
}

# Load compiled DNPM LogicalModel StructureDefinitions (JSON)
# Uses POST (not PUT) because BusyBox wget doesn't support --method=PUT.
# HAPI FHIR preserves the resource id from the POST body.
if [ -d "$SD_DIR" ]; then
  echo ""
  echo "=== Loading DNPM LogicalModel StructureDefinitions ==="
  for sd_file in "$SD_DIR"/StructureDefinition-*.json; do
    [ -f "$sd_file" ] || continue
    sd_id=$(grep '"id"' "$sd_file" | head -1 | sed 's/.*"id": "\([^"]*\)".*/\1/')
    echo -n "  $sd_id ... "
    wget -q -O /tmp/sd-result.json \
      --post-file="$sd_file" \
      --header="Content-Type: application/fhir+json" \
      --header="Accept: application/fhir+json" \
      "$BASE/StructureDefinition" 2>/tmp/sd-headers.txt
    rc=$?
    [ $rc -eq 0 ] && echo "OK" || echo "FAIL (rc=$rc)"
  done
fi

echo ""
echo "=== Loading FML StructureMaps ==="
# Load sub-maps first (order matters for imports), master map last
for fml_file in \
  "$MAPS_DIR/sm-patient-demographics.fml" \
  "$MAPS_DIR/sm-diagnosis.fml" \
  "$MAPS_DIR/sm-specimen-histology-ihc-msi.fml" \
  "$MAPS_DIR/sm-ngs-report.fml" \
  "$MAPS_DIR/sm-careplan.fml" \
  "$MAPS_DIR/sm-guideline-therapy.fml" \
  "$MAPS_DIR/sm-follow-up.fml" \
  "$MAPS_DIR/sm-systemic-therapy.fml" \
  "$MAPS_DIR/sm-claims.fml" \
  "$MAPS_DIR/dnpm-to-mii-mtb.fml"; do
  [ -f "$fml_file" ] || continue
  name=$(basename "$fml_file" .fml)
  echo -n "  $name ... "
  wget -q -O /tmp/fml-result.json \
    --post-file="$fml_file" \
    --header="Content-Type: text/fhir-mapping" \
    --header="Accept: application/fhir+json" \
    "$BASE/StructureMap" 2>/tmp/fml-headers.txt
  rc=$?
  if [ $rc -eq 0 ]; then
    echo "OK"
  else
    echo "FAIL (rc=$rc)"
    grep -o '"diagnostics":"[^"]*"' /tmp/fml-result.json 2>/dev/null | head -1 || true
  fi
done

echo ""
echo "=== All maps loaded. Matchbox ready for transformation ==="
echo "Endpoint: $BASE/StructureMap/\$transform?source=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/dnpm-to-mii-mtb"
