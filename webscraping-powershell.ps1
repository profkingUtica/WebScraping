$url = ""
$outputFile = "cve_data_powershell.json"

try {
    $data = Invoke-RestMethod -Uri $url -Method Get -ErrorAction Stop

    $cveId = $data.cve.CVE_data_meta.ID
    $referenceUrl = $data.cve.references.reference_data[0].url
    $description = $data.cve.description.description_data[0].value

    $outputData = @{
        "CVE ID" = $cveId
        "Reference URL" = $referenceUrl
        "Description" = $description
    }

    $outputData | ConvertTo-Json | Out-File -Encoding utf8 -LiteralPath $outputFile
    Write-Output "Data successfully retrieved and saved to $outputFile"
} catch {
    Write-Error "Failed to fetch data. $_"
}
#https://v1.cveapi.com/CVE-2023-5963.json
