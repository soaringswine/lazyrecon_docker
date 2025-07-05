# lazyrecon_docker
Containerized version of my fork of Nahamsec's Lazyrecon.

I'm sure I can optimize the build process and I'm willing to bet I'm not following best practices.

# How to run
```
Build locally:
1) git clone https://github.com/soaringswine/lazyrecon_docker.git
2) cd lazyrecon_docker
3) docker build --rm -f "Dockerfile" -t lazyrecon_docker:latest .
4) docker run --user $(id -u):$(id -g) -v $(pwd)/lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/lazyrecon_results/ lazyrecon_docker -d DOMAIN.TLD
5) Results will be stored in ./lazyrecon_results on Docker host
6) ???
7) Hopefully profit?!

From Dockerhub:
1) docker run --user $(id -u):$(id -g) -v $(pwd)/lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/lazyrecon_results/ soaringswine/lazyrecon_docker -d DOMAIN.TLD
2) Results will be stored in ./lazyrecon_results on Docker host
3) ???
4) Hopefully profit (but faster)?!
```

# soaringswine's Lazyrecon fork
soaringswine: I've added amass, Project Sonar (old data but someone graciously is hosting a script to let you query it nicely!), pdlist, and dnsgen into the mix and expanded the nmap and Aquatone port scanning. There were some issues with how cat and sort were being used that would leave the $domain.txt file blank, so I fixed those. Also removed one of the $domain.txt cats that was undoing the wildcard dupe pruning and added some echos to help understand what's going on in different stages. Fixed some other misc. things and tidied up the code a tad.

```
  _     ____  ____ ___  _ ____  _____ ____ ____  _
 / \   /  _ \/_   \\  \///  __\/  __//   _Y  _ \/ \  /|
 | |   | / \| /   / \  / |  \/||  \  |  / | / \|| |\ ||
 | |_/\| |-||/   /_ / /  |    /|  /_ |  \_| \_/|| | \||
 \____/\_/ \|\____//_/   \_/\_\\____\\____|____/\_/  \|

```

# Usage

`./lazyrecon.sh -d target.com`

# About

LazyRecon is a script written in Bash, it is intended to automate some tedious tasks of reconnaissance and information gathering.
This tool allows you to gather some information that should help you identify what to do next and where to look.


# Main Features 
- Create a dated folder with recon notes
- Grab subdomains using:

      * Sublist3r, certspotter and cert.sh
      * Dns bruteforcing using massdns
      
- Find any CNAME records pointing to unused cloud services like aws
- Probe for live hosts over ports 80/443
- Grab a screenshots of responsive hosts 
- Scrape wayback for data:

      * Extract javascript files
      * Build custom parameter wordlist, ready to be loaded later into Burp intruder or any other tool
      * Extract any urls with .jsp, .php or .aspx and store them for further inspection
      
- Perform nmap on specific ports 
- Get dns information about every subdomain
- Perform dirsearch for all subdomains 
- Generate a HTML report with output from the tools above
- Improved reporting and less output while doing the work
- Dark mode for html reports


# New features
- Directory search module is now MULTITHREADED (up to 10 subdomains scanned at a time)
- Enhanced html reports with the ability to search for strings, endpoints, response sizes or status codes

# DEMO
![cli output](https://github.com/plenumlab/lazyrecon/raw/dev/upgrade/recon.gif)
=================================================================================
![report demo](https://github.com/plenumlab/lazyrecon/raw/dev/upgrade/report.gif)


# Installation & Requirements
- Download the install script from https://github.com/nahamsec/bbht.
- Go version 1.10 or later.

### System Requirements
- Recommended to run on vps with 1VCPU and 2GB ram.



# Authors and Thanks
This script makes use of tools developped by the following people
- [Tom Hudson - Tomonomnom](https://github.com/tomnomnom)
- [Ahmed Aboul-Ela - Aboul3la](https://github.com/aboul3la)
- [B. Blechschmidt - Blechschmidt](https://github.com/blechschmidt)
- [Thomas D. - Maaaaz](https://github.com/maaaaz)
- [Daniel Miessler - Danielmiessler](https://github.com/danielmiessler)


# TO DO
- Report only mode to generate reports for old dirsearch data
- SubDomain exclusion





**Warning:** This code was originally created for personal use, it generates a substantial amount of traffic, please use with caution. 


