# VT-SCRAPE

A tool that uses the API of https://www.virustotal.com to find the URL's that can help in information gathering phase.
### Usage

```
$./vt-scrape.sh
Usage: ./vt-scrape.sh -d <domain>
```
### Example

```
$./vt-scrape.sh -d twitter.com
[i] Looking URL's to fetch ...
[100] URLs fetched in output/twitter.com!
```
### Installation

```
$ git clone https://github.com/Splint3r7/VT-Scrape.git
$ cd VT-Scrape
$ chmod +x vt-scrape.sh
$ sudo apt-get install jq
```

### Api_key

1. Grab your API_KEY from virus total account.
2. Paste this API_KEY into config-api-key.txt

OR

```
echo "Your_API_KEY_HERE" > config-api-key.txt
```

### Output

Output will be stored in output/site_name/site_name.txt. This text file will contain all the URL's extracted from the Virustotal API in the text format.
  
### Enjoy using tool.
