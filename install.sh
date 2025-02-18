#!/bin/bash

bgreen='\033[1;32m'
reset='\033[0m'	

printf "\n\n${bgreen}#######################################################################\n"
printf "${bgreen} Install script (Kali Linux based)${reset}\n\n"

sudo apt install python3
sudo apt install python3-pip
sudo apt install ruby
sudo apt install screen
sudo apt install git
sudo apt install amass
mkdir ~/.gf
mkdir ~/Tools
dir=~/Tools

go get -u github.com/tomnomnom/gf
go get -u github.com/ffuf/ffuf
go get -u github.com/tomnomnom/assetfinder
go get -u github.com/projectdiscovery/naabu/v2/cmd/naabu
go get -u github.com/tomnomnom/hacks/waybackurls
go get -u github.com/projectdiscovery/nuclei/v2/cmd/nuclei
go get -u github.com/michenriksen/aquatone
go get -u github.com/tomnomnom/anew
git clone https://github.com/projectdiscovery/nuclei-templates ~/nuclei-templates
nuclei -update-templates
go get -u github.com/haccer/subjack
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
git clone https://github.com/haccer/subjack $dir/subjack
git clone https://github.com/1ndianl33t/Gf-Patterns $dir/Gf-Patterns
mkdir ~/.gf
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
mv $dir/Gf-Patterns/*.json ~/.gf
GO111MODULE=on go get -u -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
go get -u github.com/hahwul/dalfox
go get -u github.com/lc/gau
go get -u github.com/KathanP19/Gxss
git clone https://github.com/blechschmidt/massdns $dir/massdns
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch
go get -u github.com/projectdiscovery/shuffledns/cmd/shuffledns
go get -u github.com/cgboal/sonarsearch/crobat
git clone https://github.com/KathanP19/JSFScan.sh $dir/JSFScan.sh
git clone https://github.com/six2dez/degoogle_hunter $dir/degoogle_hunter
git clone https://github.com/s0md3v/Arjun $dir/Arjun
git clone https://github.com/pielco11/fav-up $dir/fav-up
git clone https://github.com/chenjj/CORScanner $dir/CORScanner
git clone https://github.com/drwetter/testssl.sh $dir/testssl.sh
git clone https://github.com/ProjectAnte/dnsgen
pip3 install -r $dir/*/requirements.txt
python3 $dir/dnsgen/setup.py install
sudo chmod +x $dir/JSFScan.sh/install.sh && $dir/JSFScan.sh/install.sh
wget https://github.com/ezekg/git-hound/releases/download/1.0.0/git-hound_linux_amd64
sudo cp git-hound_linux_amd64 /usr/local/bin/git-hound
wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux
sudo cp findomain-linux /usr/local/bin/findomain
cd $dir/massdns; make
cp $dir/massdns/bin/massdns /usr/bin/
cd ~/.gf; wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json

printf "${bgreen} Finished!${reset}\n\n"
printf "\n\n${bgreen}#######################################################################\n"