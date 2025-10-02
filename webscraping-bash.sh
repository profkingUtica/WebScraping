#!/bin/bash

url=""
outputFile="cve_data_bash.json"

cveId=$(curl -s "$url" | jq -r '.cve.CVE_data_meta.ID')
referenceUrl=$(curl -s "$url" | jq -r '.cve.references.reference_data[0].url')
description=$(curl -s "$url" | jq -r '.cve.description.description_data[0].value')

echo -e "{
  \"CVE ID\": \"$cveId\",
  \"Reference URL\": \"$referenceUrl\",
  \"Description\": \"$description\"
}" > "$outputFile"

echo "Data successfully retrieved and saved to $outputFile"

#https://v1.cveapi.com/CVE-2023-5963.json
