#!/bin/bash
RED='\033[0;31m'
BWhite='\033[1;37m'
GREEN="\033[0;32m"
RESET="\033[0m"
NC='\033[0m'
YELLOW="\033[0;33m"

logo(){
#Addicted to add logos xD
	echo -e """
${GREEN}
>=>         >=>>===>>=====>     >=>>=>                                            
 >=>       >=>      >=>       >=>    >=>                                          
  >=>     >=>       >=>        >=>         >==>>> >==>   >=> >=> >=> >=>   >==>   
   >=>   >=>        >=>    >====>>=>     >=>    >=>    >=>   >=> >>   >=>>>   >=> 
    >=> >=>         >=>             >=> >=>     >=>   >=>    >=> >>   >=>>>===>>=>
     >===>          >=>       >=>    >=> >=>    >=>    >=>   >=> >=> >=> >>       
      >=>           >=>         >=>>=>     >==>>==>     >==>>>==>>=>      >====>  
                                                                 >=>
${NC}			${RED}Coded By @Splint3r7${NC}      
	"""
}

if [[ $1 == '--help' ]] || [[ $1 == '-h' ]] || [[ $1 == '' ]]; then
	echo -e "${BWhite}[+]${NC} ${YELLOW}USAGE:${NC} ./VT-scrape.sh -d <domain>"
	exit 1
fi

virustotal(){

if [[ $d == '' ]]; then
	echo -e "${YELLOW}[i]${NC}${RED} Missing argument try:${NC} ./VT-scrape.sh -d <domain>"
	exit 1
fi

if [[ $d != '' ]]; then
	curl -s --request GET --url "https://www.virustotal.com/vtapi/v2/domain/report?apikey=<YOUR_API_KEY>&domain=${d}"| jq --raw-output -r '.undetected_urls[]? | .[]'|grep 'http' > output/$d/$d-$(date +"%Y-%m-%d").txt
	
fi
}

if [[ $1 == '-d' ]] || [[ $1 == '--domain' ]]; then
	logo
	echo -e "${YELLOW}[i]${NC} Looking URL's to fetch ..."
	d=$2
	mkdir -p output/$d
	virustotal
	count=$(wc -l output/$d/$d-$(date +"%Y-%m-%d").txt | cut -d ' ' -f1)
	if [[ $count > 0 ]]; then
		echo -e "${BWhite}[${NC}${count}${BWhite}]${NC} ${YELLOW}URLs fetched in ${GREEN}output/$d${NC}!${NC}"
	elif [[ $count = 0 ]]; then
		echo -e "${YELLOW}[i]${NC} No URLs found for ${GREEN}$d${NC}"
	fi
	exit 1
fi
