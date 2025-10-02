# WebScraping
Web scraping is the process of extracting data from a web page and exporting it to a usable format such as a spreadsheet or JSON file. 

Web scraping allows you to take advantage of the massive wall of unstructured data buried in websites. The uses of web scraping are almost limitless, and it’s used extensively across industries as a driver of business strategy, to power automated product acquisition, and for customer insight — just to name a few of the most common uses.

Web scraping parses the HTML web page to retrieve data in a structured manner. While you do need to understand some basic HTML to scrape data, you don’t need extensive experience in coding. HTML gives structure to websites, so if you know where the information you want is located based on the HTML structure, you can pull it from the website with a scraper.

However, before you build a scraper, make sure the website you want to scrape doesn’t have an API with the information you need. An API (Application Programming Interface) is a set of communication protocols that allows you to access the data of an application, service, or operating system. Many websites provide an API to allow access to their data in a resource-sparing way. (source: https://scrapingrobot.com/blog/powershell-tutorial/)


# Web Scraping APIs
Below is a github project that has a list of APIs with more of a cybersecurity focus. Some require registration, but there are a few that don't require registration or an API key. 

https://github.com/jaegeral/security-apis

In this example script, we will fetch CVE data and write it to a file from the following API:
https://cveapi.com/

The following examples pull a specified CVE and write the ID, URL, and description to a file.
I used the following website to search for a CVE: https://cve.mitre.org/cve/search_cve_list.html 
ex. Windows
