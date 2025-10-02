import requests
import json
#https://v1.cveapi.com/CVE-2023-5963.json
url = ""
response = requests.get(url)

if response.status_code == 200:
    data = response.json()

    cve_id = data['cve']['CVE_data_meta']['ID']
    reference_url = data['cve']['references']['reference_data'][0]['url']
    description = data['cve']['description']['description_data'][0]['value']

    with open("cve_data_python.json", "w", encoding="utf-8") as file:
        json.dump({
            "CVE ID": cve_id,
            "Reference URL": reference_url,
            "Description": description
        }, file, indent=2)
else:
    print(f"Failed to fetch data. Status code: {response.status_code}")
