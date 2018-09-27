# VT-Scrape

A tool that uses the API of https://www.virustotal.com to find the URL's that can help in information gathering phase.
### USEAGE 

```
$./vt-scrape.sh
Usage: ./VT-scrape.sh -d <domain>
```
### EXAMPLE:

```
$./vt-scrape.sh -d twitter.com
[i] Looking URL's to fetch ...
[100] URLs fetched in output/twitter.com!
```
### INSTALLATION

```
$ git clone https://github.com/Splint3r7/VT-Scrape.git
$ cd VT-Scrape
$ chmod +x vt-scrape.sh
$ sudo apt-get install jq
```

### API_KEY

1. Grab your API_KEY from virus total account.
2. Put this API_KEY in vt-scrape.sh

#### Example
```
leafpad vt-scrape.sh
```
3. Replace the API key with apikey=$<Your_API_KEY>$
4. Save the file

### OUTPUT

Ouput will be stored in output/site_name/site_name.txt. This text file will contain all the url's extracted from the Virustotal API in the text format.
  
#### Thanks for using the tool!
