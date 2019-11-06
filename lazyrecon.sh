#!/bin/bash


########################################
# ///                                        \\\
#  		You can edit your configuration here
#
# 
########################################
aquatoneThreads=5
subdomainThreads=10
dirsearchThreads=50
dirsearchWordlist=$HOME/tools/dirsearch/db/dicc.txt
massdnsWordlist=$HOME/tools/SecLists/Discovery/DNS/clean-jhaddix-dns.txt
nmap_ports=2075,2076,6443,3868,3366,8443,8080,9443,9091,3000,8000,5900,8081,6000,10000,8181,3306,5000,4000,8888,5432,15672,9999,161,4044,7077,4040,9000,8089,443,7447,7080,8880,8983,5673,7443,19000,19080,1,3-4,6-7,9,13,17,19-26,30,32-33,37,42-43,49,53,70,79-85,88-90,99-100,106,109-111,113,119,125,135,139,143-144,146,161,163,179,199,211-212,222,254-256,259,264,280,301,306,311,340,366,389,406-407,416-417,425,427,443-445,458,464-465,481,497,500,512-515,524,541,543-545,548,554-555,563,587,593,616-617,625,631,636,646,648,666-668,683,687,691,700,705,711,714,720,722,726,749,765,777,783,787,800-801,808,843,873,880,888,898,900-903,911-912,981,987,990,992-993,995,999-1002,1007,1009-1011,1021-1100,1102,1104-1108,1110-1114,1117,1119,1121-1124,1126,1130-1132,1137-1138,1141,1145,1147-1149,1151-1152,1154,1163-1166,1169,1174-1175,1183,1185-1187,1192,1198-1199,1201,1213,1216-1218,1233-1234,1236,1244,1247-1248,1259,1271-1272,1277,1287,1296,1300-1301,1309-1311,1322,1328,1334,1352,1417,1433-1434,1443,1455,1461,1494,1500-1501,1503,1521,1524,1533,1556,1580,1583,1594,1600,1641,1658,1666,1687-1688,1700,1717-1721,1723,1755,1761,1782-1783,1801,1805,1812,1839-1840,1862-1864,1875,1900,1914,1935,1947,1971-1972,1974,1984,1998-2010,2013,2020-2022,2030,2033-2035,2038,2040-2043,2045-2049,2065,2068,2099-2100,2103,2105-2107,2111,2119,2121,2126,2135,2144,2160-2161,2170,2179,2190-2191,2196,2200,2222,2251,2260,2288,2301,2323,2366,2381-2383,2393-2394,2399,2401,2492,2500,2522,2525,2557,2601-2602,2604-2605,2607-2608,2638,2701-2702,2710,2717-2718,2725,2800,2809,2811,2869,2875,2909-2910,2920,2967-2968,2998,3000-3001,3003,3005-3007,3011,3013,3017,3030-3031,3052,3071,3077,3128,3168,3211,3221,3260-3261,3268-3269,3283,3300-3301,3306,3322-3325,3333,3351,3367,3369-3372,3389-3390,3404,3476,3493,3517,3527,3546,3551,3580,3659,3689-3690,3703,3737,3766,3784,3800-3801,3809,3814,3826-3828,3851,3869,3871,3878,3880,3889,3905,3914,3918,3920,3945,3971,3986,3995,3998,4000-4006,4045,4111,4125-4126,4129,4224,4242,4279,4321,4343,4443-4446,4449,4550,4567,4662,4848,4899-4900,4998,5000-5004,5009,5030,5033,5050-5051,5054,5060-5061,5080,5087,5100-5102,5120,5190,5200,5214,5221-5222,5225-5226,5269,5280,5298,5357,5405,5414,5431-5432,5440,5500,5510,5544,5550,5555,5560,5566,5631,5633,5666,5678-5679,5718,5730,5800-5802,5810-5811,5815,5822,5825,5850,5859,5862,5877,5900-5904,5906-5907,5910-5911,5915,5922,5925,5950,5952,5959-5963,5987-5989,5998-6007,6009,6025,6059,6100-6101,6106,6112,6123,6129,6156,6346,6389,6502,6510,6543,6547,6565-6567,6580,6646,6666-6669,6689,6692,6699,6779,6788-6789,6792,6839,6881,6901,6969,7000-7002,7004,7007,7019,7025,7070,7100,7103,7106,7200-7201,7402,7435,7443,7496,7512,7625,7627,7676,7741,7777-7778,7800,7911,7920-7921,7937-7938,7999-8002,8007-8011,8021-8022,8031,8042,8045,8080-8090,8093,8099-8100,8180-8181,8192-8194,8200,8222,8254,8290-8292,8300,8333,8383,8400,8402,8443,8500,8600,8649,8651-8652,8654,8701,8800,8873,8888,8899,8994,9000-9003,9009-9011,9040,9050,9071,9080-9081,9090-9091,9099-9103,9110-9111,9200,9207,9220,9290,9415,9418,9485,9500,9502-9503,9535,9575,9593-9595,9618,9666,9876-9878,9898,9900,9917,9929,9943-9944,9968,9998-10004,10009-10010,10012,10024-10025,10082,10180,10215,10243,10566,10616-10617,10621,10626,10628-10629,10778,11110-11111,11967,12000,12174,12265,12345,13456,13722,13782-13783,14000,14238,14441-14442,15000,15002-15004,15660,15742,16000-16001,16012,16016,16018,16080,16113,16992-16993,17877,17988,18040,18101,18988,19101,19283,19315,19350,19780,19801,19842,20000,20005,20031,20221-20222,20828,21571,22939,23502,24444,24800,25734-25735,26214,27000,27352-27353,27355-27356,27715,28201,30000,30718,30951,31038,31337,32768-32785,33354,33899,34571-34573,35500,38292,40193,40911,41511,42510,44176,44442-44443,44501,45100,48080,49152-49161,49163,49165,49167,49175-49176,49400,49999-50003,50006,50300,50389,50500,50636,50800,51103,51493,52673,52822,52848,52869,54045,54328,55055-55056,55555,55600,56737-56738,57294,57797,58080,60020,60443,61532,61900,62078,63331,64623,64680,65000,65129,65389
output_directory="./lazyrecon_results"
########################################
# Happy Hunting
########################################






red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput sgr0`

SECONDS=0

domain=
subreport=
usage() { echo -e 'Usage: $0 -d domain [-e] [-o "output_directory"]\n' 1>&2; exit 1; }

while getopts ":d:e:r:o:" options; do
    case "${options}" in
        d)
            domain=${OPTARG}
            ;;
            #### working on subdomain exclusion
        e)
            excluded=${OPTARG}
            ;;
		    r)
            subreport+=("$OPTARG")
            ;;
        o)
            output_directory=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND - 1))

if [ -z "${domain}" ] && [[ -z ${subreport[@]} ]]; then
   usage; exit 1;
fi

discovery(){
	hostalive $domain
	cleandirsearch $domain
	aqua $domain
	cleanup $domain
	waybackrecon $domain
	dirsearcher 


}
waybackrecon () {
echo "Scraping Wayback Machine for data..."
cat $output_directory/$domain/$foldername/urllist.txt | waybackurls > $output_directory/$domain/$foldername/wayback-data/waybackurls.txt 
cat $output_directory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | unfurl --unique keys > $output_directory/$domain/$foldername/wayback-data/paramlist.txt
[ -s $output_directory/$domain/$foldername/wayback-data/paramlist.txt ] && echo "Wordlist saved to /$domain/$foldername/wayback-data/paramlist.txt" 

cat $output_directory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.js(\?|$)" | sort -u > $output_directory/$domain/$foldername/wayback-data/jsurls.txt
[ -s $output_directory/$domain/$foldername/wayback-data/jsurls.txt ] && echo "JS URLs saved to /$domain/$foldername/wayback-data/jsurls.txt" 

cat $output_directory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.php(\?|$)" | sort -u > $output_directory/$domain/$foldername/wayback-data/phpurls.txt
[ -s $output_directory/$domain/$foldername/wayback-data/phpurls.txt ] && echo "PHP URLs saved to /$domain/$foldername/wayback-data/phpurls.txt" 

cat $output_directory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.aspx(\?|$)" | sort -u > $output_directory/$domain/$foldername/wayback-data/aspxurls.txt
[ -s $output_directory/$domain/$foldername/wayback-data/aspxurls.txt ] && echo "ASP URLs saved to /$domain/$foldername/wayback-data/aspxurls.txt" 

cat $output_directory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.jsp(\?|$)" | sort -u > $output_directory/$domain/$foldername/wayback-data/jspurls.txt
[ -s $output_directory/$domain/$foldername/wayback-data/jspurls.txt ] && echo "JSP URLs saved to /$domain/$foldername/wayback-data/jspurls.txt" 
}

cleanup(){
  cd $output_directory/$domain/$foldername/screenshots/
  rename 's/_/-/g' -- * 
  
  cd $path
}

hostalive(){
echo "Probing for live hosts..."
cat $output_directory/$domain/$foldername/alldomains.txt | sort -u | httprobe -c 50 -t 3000 >> $output_directory/$domain/$foldername/responsive.txt
cat $output_directory/$domain/$foldername/responsive.txt | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g' | sort -u | while read line; do
probeurl=$(cat $output_directory/$domain/$foldername/responsive.txt | sort -u | grep -m 1 $line)
echo "$probeurl" >> $output_directory/$domain/$foldername/urllist.txt
done
echo "$(cat $output_directory/$domain/$foldername/urllist.txt | sort -u)" > $output_directory/$domain/$foldername/urllist.txt
echo  "${yellow}Total of $(wc -l $output_directory/$domain/$foldername/urllist.txt | awk '{print $1}') live subdomains were found${reset}"
}



recon(){

  echo "${green}Recon started on $domain ${reset}"
  echo "Finding subdomains using Sublist3r..."
  python $HOME/tools/Sublist3r/sublist3r.py -d $domain -t 10 -v -o $output_directory/$domain/$foldername/$domain.txt > /dev/null
  echo "Finding subdomains using Amass..."
  amass enum -active -brute -d $domain >> $output_directory/$domain/$foldername/$domain.txt
  echo "$(cat $output_directory/$domain/$foldername/$domain.txt | sort -u | grep $domain)" > $output_directory/$domain/$foldername/$domain.txt
  echo "Finding domains using Certspotter..."
  curl -s https://certspotter.com/api/v0/certs\?domain\=$domain | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $domain >> $output_directory/$domain/$foldername/$domain.txt
  echo "Running DNSgen for new possible domain name combinations.."
  dnsgen $output_directory/$domain/$foldername/$domain.txt > $output_directory/$domain/$foldername/dnsgen.txt
  echo "$(cat $output_directory/$domain/$foldername/$domain.txt $output_directory/$domain/$foldername/dnsgen.txt | sort -u | grep $domain)" > $output_directory/$domain/$foldername/$domain.txt
  nsrecords $domain

  echo "Starting discovery of found subdomains..."
  discovery $domain
  echo "$(cat $output_directory/$domain/$foldername/$domain.txt | sort -u)" > $output_directory/$domain/$foldername/$domain.txt


}


dirsearcher(){

echo "Starting Dirsearch..." 
cat $output_directory/$domain/$foldername/urllist.txt | xargs -P$subdomainThreads -I % sh -c "python3 $HOME/tools/dirsearch/dirsearch.py -e php,asp,aspx,jsp,html,zip,jar -w $dirsearchWordlist -t $dirsearchThreads -u % | grep Target && tput sgr0 && bash ./lazyrecon.sh -r $output_directory -r $domain -r $foldername -r %"
}

aqua(){

echo "Starting Aquatone scan..."
cat $output_directory/$domain/$foldername/urllist.txt | aquatone -out $output_directory/$domain/$foldername/aqua_out -threads $aquatoneThreads -silent -scan-timeout 900


}

searchcrtsh(){

 $HOME/tools/massdns/scripts/ct.py $domain 2>/dev/null > $output_directory/$domain/$foldername/tmp.txt 
 [ -s $output_directory/$domain/$foldername/tmp.txt ] && cat $output_directory/$domain/$foldername/tmp.txt | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S -w  $output_directory/$domain/$foldername/crtsh.txt
 cat $output_directory/$domain/$foldername/$domain.txt | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S -w  $output_directory/$domain/$foldername/domaintemp.txt
}

mass(){
 $HOME/tools/massdns/scripts/subbrute.py $massdnsWordlist $domain | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S | grep -v 142.54.173.92 > $output_directory/$domain/$foldername/mass.txt
}
nsrecords(){


                echo "Checking http://crt.sh..."
                searchcrtsh $domain
                echo "Starting MassDNS subdomain discovery, this may take a while..."
                mass $domain > /dev/null
                echo "MassDNS finished..."
                echo "${green}Started DNS records check...${reset}"
                

                echo "Merging MassDNS results from Subbrute..."
                cat $output_directory/$domain/$foldername/mass.txt >> $output_directory/$domain/$foldername/temp.txt
                echo "Merging MassDNS results from $domain.txt..."
                cat $output_directory/$domain/$foldername/domaintemp.txt >> $output_directory/$domain/$foldername/temp.txt
                echo "Merging MassDNS results from crt.sh..."
                cat $output_directory/$domain/$foldername/crtsh.txt >> $output_directory/$domain/$foldername/temp.txt

                echo "Checking for and removing wildcard DNS entry dupes..."
                cat $output_directory/$domain/$foldername/temp.txt | awk '{print $3}' | sort -u | while read line; do
                wildcard=$(cat $output_directory/$domain/$foldername/temp.txt | grep -m 1 $line)
                echo "$wildcard" >> $output_directory/$domain/$foldername/cleantemp.txt
                done


                echo "Looking into CNAME records..."
                cat $output_directory/$domain/$foldername/cleantemp.txt | grep CNAME >> $output_directory/$domain/$foldername/cnames.txt
                cat $output_directory/$domain/$foldername/cnames.txt | sort -u | while read line; do
                hostrec=$(echo "$line" | awk '{print $1}')
                if [[ $(host $hostrec | grep NXDOMAIN) != "" ]]
                then
                echo "${red}Check the following domain for NS takeover:  $line ${reset}"
                echo "$line" >> $output_directory/$domain/$foldername/pos.txt
                else
                echo -ne "Working on it...\r"
                fi
                done
                sleep 1
                # Commenting this out because it seems to get rid of all the wildcard dupe checking from earlier..?
                #cat $output_directory/$domain/$foldername/$domain.txt > $output_directory/$domain/$foldername/alldomains.txt
                cat $output_directory/$domain/$foldername/cleantemp.txt | awk  '{print $1}' | while read line; do
                x="$line"
                echo "${x%?}" >> $output_directory/$domain/$foldername/alldomains.txt
                done
                sleep 1

        }

report(){
  subdomain=$(echo $subd | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g')
  echo "${yellow}	[+] Generating report for $subdomain"
 
   cat $output_directory/$domain/$foldername/aqua_out/aquatone_session.json | jq --arg v "$subd" -r '.pages[$v].headers[] | keys[] as $k | "\($k), \(.[$k])"' | grep -v "decreasesSecurity\|increasesSecurity" >> $output_directory/$domain/$foldername/aqua_out/parsedjson/$subdomain.headers
  dirsearchfile=$(ls $HOME/tools/dirsearch/reports/$subdomain/ | grep -v old)
	
  touch $output_directory/$domain/$foldername/reports/$subdomain.html
  echo '<html><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> $output_directory/$domain/$foldername/reports/$subdomain.html
  echo "<head>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  echo "<title>Recon Report for $subdomain</title>
<style>.status.fourhundred{color:#00a0fc}
.status.redirect{color:#d0b200}.status.fivehundred{color:#DD4A68}.status.jackpot{color:#0dee00}.status.weird{color:#cc00fc}img{padding:5px;width:360px}img:hover{box-shadow:0 0 2px 1px rgba(0,140,186,.5)}pre{font-family:Inconsolata,monospace}pre{margin:0 0 20px}pre{overflow-x:auto}article,header,img{display:block}#wrapper:after,.blog-description:after,.clearfix:after{content:}.container{position:relative}html{line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}h1{margin:.67em 0}h1,h2{margin-bottom:20px}a{background-color:transparent;-webkit-text-decoration-skip:objects;text-decoration:none}.container,table{width:100%}.site-header{overflow:auto}.post-header,.post-title,.site-header,.site-title,h1,h2{text-transform:uppercase}p{line-height:1.5em}pre,table td{padding:10px}h2{padding-top:40px;font-weight:900}a{color:#00a0fc}body,html{height:100%}body{margin:0;background:#fefefe;color:#424242;font-family:Raleway,-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Oxygen,Ubuntu,'Helvetica Neue',Arial,sans-serif;font-size:24px}h1{font-size:35px}h2{font-size:28px}p{margin:0 0 30px}pre{background:#f1f0ea;border:1px solid #dddbcc;border-radius:3px;font-size:16px}.row{display:flex}.column{flex:100%}table tbody>tr:nth-child(odd)>td,table tbody>tr:nth-child(odd)>th{background-color:#f7f7f3}table th{padding:0 10px 10px;text-align:left}.post-header,.post-title,.site-header{text-align:center}table tr{border-bottom:1px dotted #aeadad}::selection{background:#fff5b8;color:#000;display:block}::-moz-selection{background:#fff5b8;color:#000;display:block}.clearfix:after{display:table;clear:both}.container{max-width:100%}#wrapper{height:auto;min-height:100%;margin-bottom:-265px}#wrapper:after{display:block;height:265px}.site-header{padding:40px 0 0}.site-title{float:left;font-size:14px;font-weight:600;margin:0}.site-title a{float:left;background:#00a0fc;color:#fefefe;padding:5px 10px 6px}.post-container-left{width:49%;float:left;margin:auto}.post-container-right{width:49%;float:right;margin:auto}.post-header{border-bottom:1px solid #333;margin:0 0 50px;padding:0}.post-title{font-size:55px;font-weight:900;margin:15px 0}.blog-description{color:#aeadad;font-size:14px;font-weight:600;line-height:1;margin:25px 0 0;text-align:center}.single-post-container{margin-top:50px;padding-left:15px;padding-right:15px;box-sizing:border-box}body.dark{background-color:#1e2227;color:#fff}body.dark pre{background:#282c34}body.dark table tbody>tr:nth-child(odd)>td,body.dark table tbody>tr:nth-child(odd)>th{background:#282c34} table tbody>tr:nth-child(even)>th{background:#1e2227} input{font-family:Inconsolata,monospace} body.dark .status.redirect{color:#ecdb54} body.dark input{border:1px solid ;border-radius: 3px; background:#282c34;color: white} body.dark label{color:#f1f0ea} body.dark pre{color:#fff}</style>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
  ((localStorage.getItem('mode') || 'dark') === 'dark') ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')
})
</script>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo '<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.material.min.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script><script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.material.min.js"></script>'>> $output_directory/$domain/$foldername/reports/$subdomain.html 
echo '<script>$(document).ready( function () {
    $("#myTable").DataTable({
        "paging":   true,
        "ordering": true,
        "info":     true,
	     "autoWidth": true,
            "columns": [{ "width": "5%" },{ "width": "5%" },null],
                "lengthMenu": [[10, 25, 50,100, -1], [10, 25, 50,100, "All"]],

    });
} );</script></head>'>> $output_directory/$domain/$foldername/reports/$subdomain.html 

echo '<body class="dark"><header class="site-header">
<div class="site-title"><p>' >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<a style=\"cursor: pointer\" onclick=\"localStorage.setItem('mode', (localStorage.getItem('mode') || 'dark') === 'dark' ? 'bright' : 'dark'); localStorage.getItem('mode') === 'dark' ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')\" title=\"Switch to light or dark theme\">🌓 Light|dark mode</a>
</p>
</div>
</header>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo '<div id="wrapper"><div id="container">'  >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<h1 class=\"post-title\" itemprop=\"name headline\">Recon Report for <a href=\"http://$subdomain\">$subdomain</a></h1>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<p class=\"blog-description\">Generated by LazyRecon on $(date) </p>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo '<div class="container single-post-container">
<article class="post-container-left" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">
<h2>Content Discovery</h2>' >> $output_directory/$domain/$foldername/reports/$subdomain.html



  echo "<table id='myTable' class='stripe'>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  echo "<thead><tr>
 <th>Status Code</th>
 <th>Content-Length</th>
 <th>Url</th>
 </tr></thead><tbody>" >> $output_directory/$domain/$foldername/reports/$subdomain.html

   cat $HOME/tools/dirsearch/reports/$subdomain/$dirsearchfile | while read nline; do
  status_code=$(echo "$nline" | awk '{print $1}')
  size=$(echo "$nline" | awk '{print $2}')
  url=$(echo "$nline" | awk '{print $3}')
  path=${url#*[0-9]/}
 echo "<tr>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
 if [[ "$status_code" == *20[012345678]* ]]; then
    echo "<td class='status jackpot'>$status_code</td><td class='status jackpot'>$size</td><td><a class='status jackpot' href='$url'>/$path</a></td>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *30[012345678]* ]]; then
    echo "<td class='status redirect'>$status_code</td><td class='status redirect'>$size</td><td><a class='status redirect' href='$url'>/$path</a></td>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *40[012345678]* ]]; then
    echo "<td class='status fourhundred'>$status_code</td><td class='status fourhundred'>$size</td><td><a class='status fourhundred' href='$url'>/$path</a></td>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *50[012345678]* ]]; then
    echo "<td class='status fivehundred'>$status_code</td><td class='status fivehundred'>$size</td><td><a class='status fivehundred' href='$url'>/$path</a></td>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  else
     echo "<td class='status weird'>$status_code</td><td class='status weird'>$size</td><td><a class='status weird' href='$url'>/$path</a></td>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
  fi
 echo "</tr>">> $output_directory/$domain/$foldername/reports/$subdomain.html
done

  echo "</tbody></table></div>" >> $output_directory/$domain/$foldername/reports/$subdomain.html

echo '</article><article class="post-container-right" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">
<h2>Screenshots</h2>
<pre style="max-height: 340px;overflow-y: scroll">' >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo '<div class="row">
<div class="column">
Port 80' >> $output_directory/$domain/$foldername/reports/$subdomain.html
scpath=$(echo "$subdomain" | sed 's/\./_/g')
httpsc=$(ls $output_directory/$domain/$foldername/aqua_out/screenshots/http__$scpath*  2>/dev/null)
echo "<a href=\"../../../../$httpsc\"><img/src=\"../../../../$httpsc\"></a> " >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo '</div>
  <div class="column">
Port 443' >> $output_directory/$domain/$foldername/reports/$subdomain.html
httpssc=$(ls $output_directory/$domain/$foldername/aqua_out/screenshots/https__$scpath*  2>/dev/null)
echo "<a href=\"../../../../$httpssc\"><img/src=\"../../../../$httpssc\"></a>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "</div></div></pre>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
#echo "<h2>Dig Info</h2><pre>$(dig $subdomain)</pre>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Host Info</h2><pre>$(host $subdomain)</pre>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Response Headers</h2><pre>" >> $output_directory/$domain/$foldername/reports/$subdomain.html




cat $output_directory/$domain/$foldername/aqua_out/parsedjson/$subdomain.headers | while read ln;do
check=$(echo "$ln" | awk '{print $1}')

[ "$check" = "name," ] && echo -n "$ln : " | sed 's/name, //g' >> $output_directory/$domain/$foldername/reports/$subdomain.html
[ "$check" = "value," ] && echo " $ln" | sed 's/value, //g' >> $output_directory/$domain/$foldername/reports/$subdomain.html
	
done


 
echo "</pre>" >> $output_directory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Nmap Results</h2>
<pre>
$(nmap -A -T3 -Pn -p$nmap_ports $subdomain)
</pre>
</div></article></div>
</div></div></body></html>" >> $output_directory/$domain/$foldername/reports/$subdomain.html


}
master_report()
{

#this code will generate the html report for target it will have an overview of the scan
  echo '<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> $output_directory/$domain/$foldername/master_report.html
echo "<title>Recon Report for $domain</title>
<style>.status.redirect{color:#d0b200}.status.fivehundred{color:#DD4A68}.status.jackpot{color:#0dee00}img{padding:5px;width:360px}img:hover{box-shadow:0 0 2px 1px rgba(0,140,186,.5)}pre{font-family:Inconsolata,monospace}pre{margin:0 0 20px}pre{overflow-x:auto}article,header,img{display:block}#wrapper:after,.blog-description:after,.clearfix:after{content:}.container{position:relative}html{line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}h1{margin:.67em 0}h1,h2{margin-bottom:20px}a{background-color:transparent;-webkit-text-decoration-skip:objects;text-decoration:none}.container,table{width:100%}.site-header{overflow:auto}.post-header,.post-title,.site-header,.site-title,h1,h2{text-transform:uppercase}p{line-height:1.5em}pre,table td{padding:10px}h2{padding-top:40px;font-weight:900}a{color:#00a0fc}body,html{height:100%}body{margin:0;background:#fefefe;color:#424242;font-family:Raleway,-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Oxygen,Ubuntu,'Helvetica Neue',Arial,sans-serif;font-size:24px}h1{font-size:35px}h2{font-size:28px}p{margin:0 0 30px}pre{background:#f1f0ea;border:1px solid #dddbcc;border-radius:3px;font-size:16px}.row{display:flex}.column{flex:100%}table tbody>tr:nth-child(odd)>td,table tbody>tr:nth-child(odd)>th{background-color:#f7f7f3}table th{padding:0 10px 10px;text-align:left}.post-header,.post-title,.site-header{text-align:center}table tr{border-bottom:1px dotted #aeadad}::selection{background:#fff5b8;color:#000;display:block}::-moz-selection{background:#fff5b8;color:#000;display:block}.clearfix:after{display:table;clear:both}.container{max-width:100%}#wrapper{height:auto;min-height:100%;margin-bottom:-265px}#wrapper:after{display:block;height:265px}.site-header{padding:40px 0 0}.site-title{float:left;font-size:14px;font-weight:600;margin:0}.site-title a{float:left;background:#00a0fc;color:#fefefe;padding:5px 10px 6px}.post-container-left{width:49%;float:left;margin:auto}.post-container-right{width:49%;float:right;margin:auto}.post-header{border-bottom:1px solid #333;margin:0 0 50px;padding:0}.post-title{font-size:55px;font-weight:900;margin:15px 0}.blog-description{color:#aeadad;font-size:14px;font-weight:600;line-height:1;margin:25px 0 0;text-align:center}.single-post-container{margin-top:50px;padding-left:15px;padding-right:15px;box-sizing:border-box}body.dark{background-color:#1e2227;color:#fff}body.dark pre{background:#282c34}body.dark table tbody>tr:nth-child(odd)>td,body.dark table tbody>tr:nth-child(odd)>th{background:#282c34}input{font-family:Inconsolata,monospace} body.dark .status.redirect{color:#ecdb54} body.dark input{border:1px solid ;border-radius: 3px; background:#282c34;color: white} body.dark label{color:#f1f0ea} body.dark pre{color:#fff}</style>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
  ((localStorage.getItem('mode') || 'dark') === 'dark') ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')
})
</script>" >> $output_directory/$domain/$foldername/master_report.html
echo '<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.material.min.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script><script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.material.min.js"></script>'>> $output_directory/$domain/$foldername/master_report.html
echo '<script>$(document).ready( function () {
    $("#myTable").DataTable({
        "paging":   true,
        "ordering": true,
        "info":     false,
	"lengthMenu": [[10, 25, 50,100, -1], [10, 25, 50,100, "All"]],
    });
} );</script></head>'>> $output_directory/$domain/$foldername/master_report.html



echo '<body class="dark"><header class="site-header">
<div class="site-title"><p>' >> $output_directory/$domain/$foldername/master_report.html
echo "<a style=\"cursor: pointer\" onclick=\"localStorage.setItem('mode', (localStorage.getItem('mode') || 'dark') === 'dark' ? 'bright' : 'dark'); localStorage.getItem('mode') === 'dark' ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')\" title=\"Switch to light or dark theme\">🌓 Light|dark mode</a>
</p>
</div>
</header>" >> $output_directory/$domain/$foldername/master_report.html


echo '<div id="wrapper"><div id="container">' >> $output_directory/$domain/$foldername/master_report.html
echo "<h1 class=\"post-title\" itemprop=\"name headline\">Recon Report for <a href=\"http://$domain\">$domain</a></h1>" >> $output_directory/$domain/$foldername/master_report.html
echo "<p class=\"blog-description\">Generated by LazyRecon on $(date) </p>" >> $output_directory/$domain/$foldername/master_report.html
echo '<div class="container single-post-container">
<article class="post-container-left" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">
<h2>Total scanned subdomains</h2>
<table id="myTable" class="stripe">
<thead>
<tr>
 <th>Subdomains</th>
 <th>Scanned Urls</th>
 </tr>
 </thead>
<tbody>' >> $output_directory/$domain/$foldername/master_report.html


cat $output_directory/$domain/$foldername/urllist.txt |  sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g'  | while read nline; do
diresults=$(ls $HOME/tools/dirsearch/reports/$nline/ | grep -v old)
echo "<tr>
 <td><a href='./reports/$nline.html'>$nline</a></td>
 <td>$(wc -l $HOME/tools/dirsearch/reports/$nline/$diresults | awk '{print $1}')</td>
 </tr>" >> $output_directory/$domain/$foldername/master_report.html
done
echo "</tbody></table>
<div><h2>Possible NS Takeovers</h2></div>
<pre>" >> $output_directory/$domain/$foldername/master_report.html
cat $output_directory/$domain/$foldername/pos.txt >> $output_directory/$domain/$foldername/master_report.html

echo "</pre><div><h2>Wayback data</h2></div>" >> $output_directory/$domain/$foldername/master_report.html
echo "<table><tbody>" >> $output_directory/$domain/$foldername/master_report.html
[ -s $output_directory/$domain/$foldername/wayback-data/paramlist.txt ] && echo "<tr><td><a href='./wayback-data/paramlist.txt'>Params wordlist</a></td></tr>" >> $output_directory/$domain/$foldername/master_report.html
[ -s $output_directory/$domain/$foldername/wayback-data/jsurls.txt ] && echo "<tr><td><a href='./wayback-data/jsurls.txt'>Javscript files</a></td></tr>" >> $output_directory/$domain/$foldername/master_report.html
[ -s $output_directory/$domain/$foldername/wayback-data/phpurls.txt ] && echo "<tr><td><a href='./wayback-data/phpurls.txt'>PHP Urls</a></td></tr>" >> $output_directory/$domain/$foldername/master_report.html
[ -s $output_directory/$domain/$foldername/wayback-data/aspxurls.txt ] && echo "<tr><td><a href='./wayback-data/aspxurls.txt'>ASP Urls</a></td></tr>" >> $output_directory/$domain/$foldername/master_report.html
echo "</tbody></table></div>" >> $output_directory/$domain/$foldername/master_report.html

echo '</article><article class="post-container-right" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">' >> $output_directory/$domain/$foldername/master_report.html
echo "<h2><a href='./aqua_out/aquatone_report.html'>View Aquatone Report</a></h2>" >> $output_directory/$domain/$foldername/master_report.html
#cat $output_directory/$domain/$foldername/ipaddress.txt >> $output_directory/$domain/$foldername/master_report.html
echo "<h2>Dig Info</h2>
<pre>
$(dig $domain)
</pre>" >> $output_directory/$domain/$foldername/master_report.html
echo "<h2>Host Info</h2>
<pre>
$(host $domain)
</pre>" >> $output_directory/$domain/$foldername/master_report.html

echo "<h2>Nmap Results</h2>
<pre>
$(nmap -A -T3 -Pn -p$nmap_ports $domain)
</pre>
</div></article></div>
</div></div></body></html>" >> $output_directory/$domain/$foldername/master_report.html


}

logo(){
  #can't have a bash script without a cool logo :D
  echo "${red}
 _     ____  ____ ___  _ ____  _____ ____  ____  _
/ \   /  _ \/_   \\\  \///  __\/  __//   _\/  _ \/ \  /|
| |   | / \| /   / \  / |  \/||  \  |  /  | / \|| |\ ||
| |_/\| |-||/   /_ / /  |    /|  /_ |  \__| \_/|| | \||
\____/\_/ \|\____//_/   \_/\_\\\____\\\____/\____/\_/  \\|
${reset}                                                      "
}
cleandirsearch(){
	cat $output_directory/$domain/$foldername/urllist.txt | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g' | sort -u | while read line; do
  [ -d $HOME/tools/dirsearch/reports/$line/ ] && ls $HOME/tools/dirsearch/reports/$line/ | grep -v old | while read i; do
  mv $HOME/tools/dirsearch/reports/$line/$i $HOME/tools/dirsearch/reports/$line/$i.old
  done
  done
  }
cleantemp(){

    rm $output_directory/$domain/$foldername/temp.txt
	rm $output_directory/$domain/$foldername/tmp.txt
    rm $output_directory/$domain/$foldername/domaintemp.txt
    rm $output_directory/$domain/$foldername/cleantemp.txt
    
}
main(){
if [ -z "${domain}" ]; then
output_directory=${subreport[1]}
domain=${subreport[2]}
foldername=${subreport[3]}
subd=${subreport[4]}
report $output_directory $domain $subdomain $foldername $subd; exit 1;
fi
  clear
  logo
  if [ -d "$output_directory/$domain" ]
  then
    echo "This is a known target."
  else
    mkdir $output_directory/$domain
  fi

  mkdir $output_directory/$domain/$foldername
  mkdir $output_directory/$domain/$foldername/aqua_out
  mkdir $output_directory/$domain/$foldername/aqua_out/parsedjson
  mkdir $output_directory/$domain/$foldername/reports/
  mkdir $output_directory/$domain/$foldername/wayback-data/
  mkdir $output_directory/$domain/$foldername/screenshots/
  touch $output_directory/$domain/$foldername/crtsh.txt
  touch $output_directory/$domain/$foldername/mass.txt
  touch $output_directory/$domain/$foldername/cnames.txt
  touch $output_directory/$domain/$foldername/pos.txt
  touch $output_directory/$domain/$foldername/alldomains.txt
  touch $output_directory/$domain/$foldername/temp.txt
  touch $output_directory/$domain/$foldername/tmp.txt
  touch $output_directory/$domain/$foldername/domaintemp.txt
  touch $output_directory/$domain/$foldername/ipaddress.txt
  touch $output_directory/$domain/$foldername/cleantemp.txt
  touch $output_directory/$domain/$foldername/master_report.html
  
  cleantemp 
  recon $domain
  master_report $domain
  echo "${green}Scan for $domain finished successfully${reset}"
  duration=$SECONDS
  echo "Scan completed in : $(($duration / 60)) minutes and $(($duration % 60)) seconds."
  cleantemp 
  stty sane
  tput sgr0
}
todate=$(date +"%Y-%m-%d")
path=$(pwd)
foldername=recon-$todate
#source $HOME/.zshrc
main $domain

