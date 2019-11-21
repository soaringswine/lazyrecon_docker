#!/bin/bash


########################################
# ///                                        \\\
#  		You can edit your configuration here
#
# 
########################################
aquatoneThreads=5
# see https://github.com/michenriksen/aquatone/blob/93c79694068733186878f50a545fa69f3dcec9ce/core/ports.go for Aquatone port aliases.
aquatonePorts=xlarge
subdomainThreads=10
dirsearchThreads=50
dirsearchWordlist=$HOME/tools/dirsearch/db/dicc.txt
massdnsWordlist=$HOME/tools/SecLists/Discovery/DNS/clean-jhaddix-dns.txt
nmapPorts="1,100,1000,10000,10001,10002,10003,10004,10009,1001,10010,10012,1002,10024,10025,1007,10082,1009,1010,1011,10180,1021,10215,1022,1023,1024,10243,1025,1026,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1039,1040,1041,1042,1043,1044,1045,1046,1047,1048,1049,1050,1051,1052,1053,1054,1055,1056,10566,1057,1058,1059,106,1060,1061,10616,10617,1062,10621,10626,10628,10629,1063,1064,1065,1066,1067,1068,1069,1070,1071,1072,1073,1074,1075,1076,1077,10778,1078,1079,1080,1081,1082,1083,1084,1085,1086,1087,1088,1089,109,1090,1091,1092,1093,1094,1095,1096,1097,1098,1099,110,1100,1102,1104,1105,1106,1107,1108,111,1110,1111,11110,11111,1112,1113,1114,1117,1119,1121,1122,1123,1124,1126,113,1130,1131,1132,1137,1138,1141,1145,1147,1148,1149,1151,1152,1154,1163,1164,1165,1166,1169,1174,1175,1183,1185,1186,1187,119,1192,11967,1198,1199,12000,1201,1213,1216,1217,12174,1218,12265,1233,1234,12345,1236,1244,1247,1248,125,1259,1271,1272,1277,1287,1296,13,1300,1301,1309,1310,1311,1322,1328,1334,13456,135,1352,13722,13782,13783,139,14000,1417,14238,143,1433,1434,144,1443,14441,14442,1455,146,1461,1494,1500,15000,15002,15003,15004,1501,1503,1521,1524,1533,1556,15660,15672,15742,1580,1583,1594,1600,16000,16001,16012,16016,16018,16080,161,16113,163,1641,1658,1666,1687,1688,16992,16993,17,1700,1717,1718,1719,1720,1721,1723,1755,1761,1782,1783,17877,179,17988,1801,18040,1805,18101,1812,1839,1840,1862,1863,1864,1875,18988,19,1900,19000,19080,19101,1914,19283,19315,1935,19350,1947,1971,1972,1974,19780,19801,1984,19842,199,1998,1999,20,2000,20000,20005,2001,2002,2003,20031,2004,2005,2006,2007,2008,2009,2010,2013,2020,2021,2022,20221,20222,2030,2033,2034,2035,2038,2040,2041,2042,2043,2045,2046,2047,2048,2049,2065,2068,2075,2076,20828,2099,21,2100,2103,2105,2106,2107,211,2111,2119,212,2121,2126,2135,2144,21571,2160,2161,2170,2179,2190,2191,2196,22,2200,222,2222,2251,2260,2288,22939,23,2301,2323,23502,2366,2381,2382,2383,2393,2394,2399,24,2401,24444,24800,2492,25,2500,2522,2525,254,255,2557,256,25734,25735,259,26,2601,2602,2604,2605,2607,2608,26214,2638,264,27000,2701,2702,2710,2717,2718,2725,27352,27353,27355,27356,27715,280,2800,2809,2811,28201,2869,2875,2909,2910,2920,2967,2968,2998,3,30,3000,30000,3001,3003,3005,3006,3007,301,3011,3013,3017,3030,3031,3052,306,3071,30718,3077,30951,31038,311,3128,31337,3168,32,3211,3221,3260,3261,3268,3269,32768,32769,32770,32771,32772,32773,32774,32775,32776,32777,32778,32779,32780,32781,32782,32783,32784,32785,3283,33,3300,3301,3306,3322,3323,3324,3325,3333,33354,3351,3366,3367,3369,3370,3371,3372,3389,33899,3390,340,3404,34571,34572,34573,3476,3493,3517,3527,3546,35500,3551,3580,3659,366,3689,3690,37,3703,3737,3766,3784,3800,3801,3809,3814,3826,3827,3828,38292,3851,3868,3869,3871,3878,3880,3889,389,3905,3914,3918,3920,3945,3971,3986,3995,3998,4,4000,4001,4002,4003,4004,4005,4006,40193,4040,4044,4045,406,407,40911,4111,4125,4126,4129,41511,416,417,42,4224,4242,425,42510,427,4279,43,4321,4343,44176,443,444,4443,4444,44442,44443,4445,4446,4449,445,44501,45100,4550,4567,458,464,465,4662,48080,481,4848,4899,49,4900,49152,49153,49154,49155,49156,49157,49158,49159,49160,49161,49163,49165,49167,49175,49176,49400,497,4998,49999,500,5000,50000,50001,50002,50003,50006,5001,5002,5003,5004,5009,5030,50300,5033,50389,5050,50500,5051,5054,5060,5061,50636,5080,50800,5087,5100,5101,5102,51103,512,5120,513,514,51493,515,5190,5200,5214,5221,5222,5225,5226,524,52673,5269,5280,52822,52848,52869,5298,53,5357,54045,5405,541,5414,543,5431,5432,54328,544,5440,545,548,5500,55055,55056,5510,554,5544,555,5550,5555,55555,5560,55600,5566,563,5631,5633,5666,5673,56737,56738,5678,5679,5718,57294,5730,57797,5800,5801,5802,58080,5810,5811,5815,5822,5825,5850,5859,5862,587,5877,5900,5901,5902,5903,5904,5906,5907,5910,5911,5915,5922,5925,593,5950,5952,5959,5960,5961,5962,5963,5987,5988,5989,5998,5999,6,6000,6001,6002,60020,6003,6004,6005,6006,6007,6009,6025,60443,6059,6100,6101,6106,6112,6123,6129,61532,6156,616,617,61900,62078,625,631,63331,6346,636,6389,6443,646,64623,64680,648,65000,6502,6510,65129,65389,6543,6547,6565,6566,6567,6580,6646,666,6666,6667,6668,6669,667,668,6689,6692,6699,6779,6788,6789,6792,683,6839,687,6881,6901,691,6969,7,70,700,7000,7001,7002,7004,7007,7019,7025,705,7070,7077,7080,7100,7103,7106,711,714,720,7200,7201,722,726,7402,7435,7443,7447,749,7496,7512,7625,7627,765,7676,7741,777,7777,7778,7800,783,787,79,7911,7920,7921,7937,7938,7999,80,800,8000,8001,8002,8007,8008,8009,801,8010,8011,8021,8022,8031,8042,8045,808,8080,8081,8082,8083,8084,8085,8086,8087,8088,8089,8090,8093,8099,81,8100,8180,8181,8192,8193,8194,82,8200,8222,8254,8290,8291,8292,83,8300,8333,8383,84,8400,8402,843,8443,85,8500,8600,8649,8651,8652,8654,8701,873,88,880,8800,8873,888,8880,8888,8899,89,898,8983,8994,9,90,900,9000,9001,9002,9003,9009,901,9010,9011,902,903,9040,9050,9071,9080,9081,9090,9091,9099,9100,9101,9102,9103,911,9110,9111,912,9200,9207,9220,9290,9415,9418,9443,9485,9500,9502,9503,9535,9575,9593,9594,9595,9618,9666,981,987,9876,9877,9878,9898,99,990,9900,9917,992,9929,993,9943,9944,995,9968,999,9998,9999"
outputDirectory="./lazyrecon_results"
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
usage() { echo -e 'Usage: $0 -d domain [-e] [-o "outputDirectory"]\n' 1>&2; exit 1; }

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
            outputDirectory=${OPTARG}
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
cat $outputDirectory/$domain/$foldername/urllist.txt | waybackurls > $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt 
cat $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | unfurl --unique keys > $outputDirectory/$domain/$foldername/wayback-data/paramlist.txt
[ -s $outputDirectory/$domain/$foldername/wayback-data/paramlist.txt ] && echo "Wordlist saved to /$domain/$foldername/wayback-data/paramlist.txt" 

cat $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.js(\?|$)" | sort -u > $outputDirectory/$domain/$foldername/wayback-data/jsurls.txt
[ -s $outputDirectory/$domain/$foldername/wayback-data/jsurls.txt ] && echo "JS URLs saved to /$domain/$foldername/wayback-data/jsurls.txt" 

cat $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.php(\?|$)" | sort -u > $outputDirectory/$domain/$foldername/wayback-data/phpurls.txt
[ -s $outputDirectory/$domain/$foldername/wayback-data/phpurls.txt ] && echo "PHP URLs saved to /$domain/$foldername/wayback-data/phpurls.txt" 

cat $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.aspx(\?|$)" | sort -u > $outputDirectory/$domain/$foldername/wayback-data/aspxurls.txt
[ -s $outputDirectory/$domain/$foldername/wayback-data/aspxurls.txt ] && echo "ASP URLs saved to /$domain/$foldername/wayback-data/aspxurls.txt" 

cat $outputDirectory/$domain/$foldername/wayback-data/waybackurls.txt  | sort -u | grep -P "\w+\.jsp(\?|$)" | sort -u > $outputDirectory/$domain/$foldername/wayback-data/jspurls.txt
[ -s $outputDirectory/$domain/$foldername/wayback-data/jspurls.txt ] && echo "JSP URLs saved to /$domain/$foldername/wayback-data/jspurls.txt" 
}

cleanup(){
  cd $outputDirectory/$domain/$foldername/screenshots/
  rename 's/_/-/g' -- * 
  
  cd $path
}

hostalive(){
echo "Probing for live hosts..."
cat $outputDirectory/$domain/$foldername/alldomains.txt | sort -u | httprobe -c 50 -t 3000 >> $outputDirectory/$domain/$foldername/responsive.txt
cat $outputDirectory/$domain/$foldername/responsive.txt | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g' | sort -u | while read line; do
probeurl=$(cat $outputDirectory/$domain/$foldername/responsive.txt | sort -u | grep -m 1 $line)
echo "$probeurl" >> $outputDirectory/$domain/$foldername/urllist.txt
done
echo "$(cat $outputDirectory/$domain/$foldername/urllist.txt | sort -u)" > $outputDirectory/$domain/$foldername/urllist.txt
echo  "${yellow}Total of $(wc -l $outputDirectory/$domain/$foldername/urllist.txt | awk '{print $1}') live subdomains were found${reset}"
}



recon(){

  echo "${green}Recon started on $domain ${reset}"
  echo "Finding subdomains using Sublist3r..."
  python $HOME/tools/Sublist3r/sublist3r.py -b -d $domain -t 10 -v -o $outputDirectory/$domain/$foldername/$domain.txt > /dev/null
  echo "Finding subdomains using Amass..."
  amass enum -active -brute -d $domain >> $outputDirectory/$domain/$foldername/$domain.txt
  echo "$(cat $outputDirectory/$domain/$foldername/$domain.txt | sort -u | grep $domain)" > $outputDirectory/$domain/$foldername/$domain.txt
  echo "Finding domains using Certspotter..."
  curl -s "https://api.certspotter.com/v1/issuances?domain=$domain&include_subdomains=true&expand=dns_names" | jq '.[].dns_names[]' | sed 's/\"//g' | sed 's/\*\.//g' | sort -u | grep $domain >> $outputDirectory/$domain/$foldername/$domain.txt
  echo "Finding domains using (old) Project Sonar data script hosted by erbbysam.com (thx m8).."
  curl -s "https://dns.bufferover.run/dns?q=$domain" 2> /dev/null | jq -r '.FDNS_A,.RDNS | .[]' | sed 's/\*\.//g' | cut -d ',' -f2 | grep -F ".$domain" | sort -u >> $outputDirectory/$domain/$foldername/$domain.txt
  echo "Finding domains passively with pdlist.."
  pdlist $domain --strict -o $outputDirectory/$domain/$foldername/pdlist.txt
  echo "$(cat $outputDirectory/$domain/$foldername/$domain.txt $outputDirectory/$domain/$foldername/pdlist.txt | sort -u | grep $domain)" > $outputDirectory/$domain/$foldername/$domain.txt
  echo "Running DNSgen for new possible domain name combinations.."
  dnsgen $outputDirectory/$domain/$foldername/$domain.txt > $outputDirectory/$domain/$foldername/dnsgen.txt
  echo "$(cat $outputDirectory/$domain/$foldername/$domain.txt $outputDirectory/$domain/$foldername/dnsgen.txt | sort -u | grep $domain)" > $outputDirectory/$domain/$foldername/$domain.txt
  nsrecords $domain

  echo "Starting discovery of found subdomains..."
  discovery $domain
  echo "$(cat $outputDirectory/$domain/$foldername/$domain.txt | sort -u)" > $outputDirectory/$domain/$foldername/$domain.txt


}


dirsearcher(){

echo "Starting Dirsearch..." 
cat $outputDirectory/$domain/$foldername/urllist.txt | xargs -P$subdomainThreads -I % sh -c "python3 $HOME/tools/dirsearch/dirsearch.py -e php,asp,aspx,jsp,html,zip,jar -w $dirsearchWordlist -t $dirsearchThreads -u % | grep Target && tput sgr0 && bash ./lazyrecon.sh -r $outputDirectory -r $domain -r $foldername -r %"
}

aqua(){

echo "Starting Aquatone scan..."
cat $outputDirectory/$domain/$foldername/urllist.txt | aquatone -out $outputDirectory/$domain/$foldername/aqua_out -threads $aquatoneThreads -silent -scan-timeout 900 -ports $aquatonePorts


}

searchcrtsh(){

 $HOME/tools/massdns/scripts/ct.py $domain 2>/dev/null > $outputDirectory/$domain/$foldername/tmp.txt 
 [ -s $outputDirectory/$domain/$foldername/tmp.txt ] && cat $outputDirectory/$domain/$foldername/tmp.txt | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S -w  $outputDirectory/$domain/$foldername/crtsh.txt
 cat $outputDirectory/$domain/$foldername/$domain.txt | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S -w  $outputDirectory/$domain/$foldername/domaintemp.txt
}

mass(){
 $HOME/tools/massdns/scripts/subbrute.py $massdnsWordlist $domain | $HOME/tools/massdns/bin/massdns -r $HOME/tools/massdns/lists/resolvers.txt -t A -q -o S | grep -v 142.54.173.92 > $outputDirectory/$domain/$foldername/mass.txt
}
nsrecords(){


                echo "Checking http://crt.sh..."
                searchcrtsh $domain
                echo "Starting MassDNS subdomain discovery, this may take a while..."
                mass $domain > /dev/null
                echo "MassDNS finished..."
                echo "${green}Started DNS records check...${reset}"
                

                echo "Merging MassDNS results from Subbrute..."
                cat $outputDirectory/$domain/$foldername/mass.txt >> $outputDirectory/$domain/$foldername/temp.txt
                echo "Merging MassDNS results from $domain.txt..."
                cat $outputDirectory/$domain/$foldername/domaintemp.txt >> $outputDirectory/$domain/$foldername/temp.txt
                echo "Merging MassDNS results from crt.sh..."
                cat $outputDirectory/$domain/$foldername/crtsh.txt >> $outputDirectory/$domain/$foldername/temp.txt

                echo "Checking for and removing wildcard DNS entry dupes..."
                cat $outputDirectory/$domain/$foldername/temp.txt | awk '{print $3}' | sort -u | while read line; do
                wildcard=$(cat $outputDirectory/$domain/$foldername/temp.txt | grep -m 1 $line)
                echo "$wildcard" >> $outputDirectory/$domain/$foldername/cleantemp.txt
                done


                echo "Looking into CNAME records..."
                cat $outputDirectory/$domain/$foldername/cleantemp.txt | grep CNAME >> $outputDirectory/$domain/$foldername/cnames.txt
                cat $outputDirectory/$domain/$foldername/cnames.txt | sort -u | while read line; do
                hostrec=$(echo "$line" | awk '{print $1}')
                if [[ $(host $hostrec | grep NXDOMAIN) != "" ]]
                then
                echo "${red}Check the following domain for NS takeover:  $line ${reset}"
                echo "$line" >> $outputDirectory/$domain/$foldername/pos.txt
                else
                echo -ne "Working on it...\r"
                fi
                done
                sleep 1
                # Commenting this out because it seems to get rid of all the wildcard dupe checking from earlier..?
                #cat $outputDirectory/$domain/$foldername/$domain.txt > $outputDirectory/$domain/$foldername/alldomains.txt
                cat $outputDirectory/$domain/$foldername/cleantemp.txt | awk  '{print $1}' | while read line; do
                x="$line"
                echo "${x%?}" >> $outputDirectory/$domain/$foldername/alldomains.txt
                done
                sleep 1

        }

report(){
  subdomain=$(echo $subd | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g')
  echo "${yellow}	[+] Generating report for $subdomain"
 
   cat $outputDirectory/$domain/$foldername/aqua_out/aquatone_session.json | jq --arg v "$subd" -r '.pages[$v].headers[] | keys[] as $k | "\($k), \(.[$k])"' | grep -v "decreasesSecurity\|increasesSecurity" >> $outputDirectory/$domain/$foldername/aqua_out/parsedjson/$subdomain.headers
  dirsearchfile=$(ls $HOME/tools/dirsearch/reports/$subdomain/ | grep -v old)
	
  touch $outputDirectory/$domain/$foldername/reports/$subdomain.html
  echo '<html><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  echo "<head>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  echo "<title>Recon Report for $subdomain</title>
<style>.status.fourhundred{color:#00a0fc}
.status.redirect{color:#d0b200}.status.fivehundred{color:#DD4A68}.status.jackpot{color:#0dee00}.status.weird{color:#cc00fc}img{padding:5px;width:360px}img:hover{box-shadow:0 0 2px 1px rgba(0,140,186,.5)}pre{font-family:Inconsolata,monospace}pre{margin:0 0 20px}pre{overflow-x:auto}article,header,img{display:block}#wrapper:after,.blog-description:after,.clearfix:after{content:}.container{position:relative}html{line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}h1{margin:.67em 0}h1,h2{margin-bottom:20px}a{background-color:transparent;-webkit-text-decoration-skip:objects;text-decoration:none}.container,table{width:100%}.site-header{overflow:auto}.post-header,.post-title,.site-header,.site-title,h1,h2{text-transform:uppercase}p{line-height:1.5em}pre,table td{padding:10px}h2{padding-top:40px;font-weight:900}a{color:#00a0fc}body,html{height:100%}body{margin:0;background:#fefefe;color:#424242;font-family:Raleway,-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Oxygen,Ubuntu,'Helvetica Neue',Arial,sans-serif;font-size:24px}h1{font-size:35px}h2{font-size:28px}p{margin:0 0 30px}pre{background:#f1f0ea;border:1px solid #dddbcc;border-radius:3px;font-size:16px}.row{display:flex}.column{flex:100%}table tbody>tr:nth-child(odd)>td,table tbody>tr:nth-child(odd)>th{background-color:#f7f7f3}table th{padding:0 10px 10px;text-align:left}.post-header,.post-title,.site-header{text-align:center}table tr{border-bottom:1px dotted #aeadad}::selection{background:#fff5b8;color:#000;display:block}::-moz-selection{background:#fff5b8;color:#000;display:block}.clearfix:after{display:table;clear:both}.container{max-width:100%}#wrapper{height:auto;min-height:100%;margin-bottom:-265px}#wrapper:after{display:block;height:265px}.site-header{padding:40px 0 0}.site-title{float:left;font-size:14px;font-weight:600;margin:0}.site-title a{float:left;background:#00a0fc;color:#fefefe;padding:5px 10px 6px}.post-container-left{width:49%;float:left;margin:auto}.post-container-right{width:49%;float:right;margin:auto}.post-header{border-bottom:1px solid #333;margin:0 0 50px;padding:0}.post-title{font-size:55px;font-weight:900;margin:15px 0}.blog-description{color:#aeadad;font-size:14px;font-weight:600;line-height:1;margin:25px 0 0;text-align:center}.single-post-container{margin-top:50px;padding-left:15px;padding-right:15px;box-sizing:border-box}body.dark{background-color:#1e2227;color:#fff}body.dark pre{background:#282c34}body.dark table tbody>tr:nth-child(odd)>td,body.dark table tbody>tr:nth-child(odd)>th{background:#282c34} table tbody>tr:nth-child(even)>th{background:#1e2227} input{font-family:Inconsolata,monospace} body.dark .status.redirect{color:#ecdb54} body.dark input{border:1px solid ;border-radius: 3px; background:#282c34;color: white} body.dark label{color:#f1f0ea} body.dark pre{color:#fff}</style>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
  ((localStorage.getItem('mode') || 'dark') === 'dark') ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')
})
</script>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo '<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.material.min.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script><script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.material.min.js"></script>'>> $outputDirectory/$domain/$foldername/reports/$subdomain.html 
echo '<script>$(document).ready( function () {
    $("#myTable").DataTable({
        "paging":   true,
        "ordering": true,
        "info":     true,
	     "autoWidth": true,
            "columns": [{ "width": "5%" },{ "width": "5%" },null],
                "lengthMenu": [[10, 25, 50,100, -1], [10, 25, 50,100, "All"]],

    });
} );</script></head>'>> $outputDirectory/$domain/$foldername/reports/$subdomain.html 

echo '<body class="dark"><header class="site-header">
<div class="site-title"><p>' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<a style=\"cursor: pointer\" onclick=\"localStorage.setItem('mode', (localStorage.getItem('mode') || 'dark') === 'dark' ? 'bright' : 'dark'); localStorage.getItem('mode') === 'dark' ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')\" title=\"Switch to light or dark theme\">🌓 Light|dark mode</a>
</p>
</div>
</header>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo '<div id="wrapper"><div id="container">'  >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<h1 class=\"post-title\" itemprop=\"name headline\">Recon Report for <a href=\"http://$subdomain\">$subdomain</a></h1>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<p class=\"blog-description\">Generated by LazyRecon on $(date) </p>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo '<div class="container single-post-container">
<article class="post-container-left" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">
<h2>Content Discovery</h2>' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html



  echo "<table id='myTable' class='stripe'>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  echo "<thead><tr>
 <th>Status Code</th>
 <th>Content-Length</th>
 <th>Url</th>
 </tr></thead><tbody>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html

   cat $HOME/tools/dirsearch/reports/$subdomain/$dirsearchfile | while read nline; do
  status_code=$(echo "$nline" | awk '{print $1}')
  size=$(echo "$nline" | awk '{print $2}')
  url=$(echo "$nline" | awk '{print $3}')
  path=${url#*[0-9]/}
 echo "<tr>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
 if [[ "$status_code" == *20[012345678]* ]]; then
    echo "<td class='status jackpot'>$status_code</td><td class='status jackpot'>$size</td><td><a class='status jackpot' href='$url'>/$path</a></td>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *30[012345678]* ]]; then
    echo "<td class='status redirect'>$status_code</td><td class='status redirect'>$size</td><td><a class='status redirect' href='$url'>/$path</a></td>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *40[012345678]* ]]; then
    echo "<td class='status fourhundred'>$status_code</td><td class='status fourhundred'>$size</td><td><a class='status fourhundred' href='$url'>/$path</a></td>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  elif [[ "$status_code" == *50[012345678]* ]]; then
    echo "<td class='status fivehundred'>$status_code</td><td class='status fivehundred'>$size</td><td><a class='status fivehundred' href='$url'>/$path</a></td>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  else
     echo "<td class='status weird'>$status_code</td><td class='status weird'>$size</td><td><a class='status weird' href='$url'>/$path</a></td>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
  fi
 echo "</tr>">> $outputDirectory/$domain/$foldername/reports/$subdomain.html
done

  echo "</tbody></table></div>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html

echo '</article><article class="post-container-right" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">
<h2>Screenshots</h2>
<pre style="max-height: 340px;overflow-y: scroll">' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo '<div class="row">
<div class="column">
Port 80' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
scpath=$(echo "$subdomain" | sed 's/\./_/g')
httpsc=$(ls $outputDirectory/$domain/$foldername/aqua_out/screenshots/http__$scpath*  2>/dev/null)
echo "<a href=\"../../../../$httpsc\"><img/src=\"../../../../$httpsc\"></a> " >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo '</div>
  <div class="column">
Port 443' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
httpssc=$(ls $outputDirectory/$domain/$foldername/aqua_out/screenshots/https__$scpath*  2>/dev/null)
echo "<a href=\"../../../../$httpssc\"><img/src=\"../../../../$httpssc\"></a>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "</div></div></pre>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
#echo "<h2>Dig Info</h2><pre>$(dig $subdomain)</pre>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Host Info</h2><pre>$(host $subdomain)</pre>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Response Headers</h2><pre>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html




cat $outputDirectory/$domain/$foldername/aqua_out/parsedjson/$subdomain.headers | while read ln;do
check=$(echo "$ln" | awk '{print $1}')

[ "$check" = "name," ] && echo -n "$ln : " | sed 's/name, //g' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
[ "$check" = "value," ] && echo " $ln" | sed 's/value, //g' >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
	
done


 
echo "</pre>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html
echo "<h2>Nmap Results</h2>
<pre>
$(nmap -A -T3 -Pn -p$nmapPorts $subdomain -oA $outputDirectory/$domain/$foldername/nmap_results/$subdomain)
</pre>
</div></article></div>
</div></div></body></html>" >> $outputDirectory/$domain/$foldername/reports/$subdomain.html


}
master_report()
{

#this code will generate the html report for target it will have an overview of the scan
  echo '<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">' >> $outputDirectory/$domain/$foldername/master_report.html
echo "<title>Recon Report for $domain</title>
<style>.status.redirect{color:#d0b200}.status.fivehundred{color:#DD4A68}.status.jackpot{color:#0dee00}img{padding:5px;width:360px}img:hover{box-shadow:0 0 2px 1px rgba(0,140,186,.5)}pre{font-family:Inconsolata,monospace}pre{margin:0 0 20px}pre{overflow-x:auto}article,header,img{display:block}#wrapper:after,.blog-description:after,.clearfix:after{content:}.container{position:relative}html{line-height:1.15;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}h1{margin:.67em 0}h1,h2{margin-bottom:20px}a{background-color:transparent;-webkit-text-decoration-skip:objects;text-decoration:none}.container,table{width:100%}.site-header{overflow:auto}.post-header,.post-title,.site-header,.site-title,h1,h2{text-transform:uppercase}p{line-height:1.5em}pre,table td{padding:10px}h2{padding-top:40px;font-weight:900}a{color:#00a0fc}body,html{height:100%}body{margin:0;background:#fefefe;color:#424242;font-family:Raleway,-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,Oxygen,Ubuntu,'Helvetica Neue',Arial,sans-serif;font-size:24px}h1{font-size:35px}h2{font-size:28px}p{margin:0 0 30px}pre{background:#f1f0ea;border:1px solid #dddbcc;border-radius:3px;font-size:16px}.row{display:flex}.column{flex:100%}table tbody>tr:nth-child(odd)>td,table tbody>tr:nth-child(odd)>th{background-color:#f7f7f3}table th{padding:0 10px 10px;text-align:left}.post-header,.post-title,.site-header{text-align:center}table tr{border-bottom:1px dotted #aeadad}::selection{background:#fff5b8;color:#000;display:block}::-moz-selection{background:#fff5b8;color:#000;display:block}.clearfix:after{display:table;clear:both}.container{max-width:100%}#wrapper{height:auto;min-height:100%;margin-bottom:-265px}#wrapper:after{display:block;height:265px}.site-header{padding:40px 0 0}.site-title{float:left;font-size:14px;font-weight:600;margin:0}.site-title a{float:left;background:#00a0fc;color:#fefefe;padding:5px 10px 6px}.post-container-left{width:49%;float:left;margin:auto}.post-container-right{width:49%;float:right;margin:auto}.post-header{border-bottom:1px solid #333;margin:0 0 50px;padding:0}.post-title{font-size:55px;font-weight:900;margin:15px 0}.blog-description{color:#aeadad;font-size:14px;font-weight:600;line-height:1;margin:25px 0 0;text-align:center}.single-post-container{margin-top:50px;padding-left:15px;padding-right:15px;box-sizing:border-box}body.dark{background-color:#1e2227;color:#fff}body.dark pre{background:#282c34}body.dark table tbody>tr:nth-child(odd)>td,body.dark table tbody>tr:nth-child(odd)>th{background:#282c34}input{font-family:Inconsolata,monospace} body.dark .status.redirect{color:#ecdb54} body.dark input{border:1px solid ;border-radius: 3px; background:#282c34;color: white} body.dark label{color:#f1f0ea} body.dark pre{color:#fff}</style>
<script>
document.addEventListener('DOMContentLoaded', (event) => {
  ((localStorage.getItem('mode') || 'dark') === 'dark') ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')
})
</script>" >> $outputDirectory/$domain/$foldername/master_report.html
echo '<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-lite/1.1.0/material.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/dataTables.material.min.css">
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script><script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.material.min.js"></script>'>> $outputDirectory/$domain/$foldername/master_report.html
echo '<script>$(document).ready( function () {
    $("#myTable").DataTable({
        "paging":   true,
        "ordering": true,
        "info":     false,
	"lengthMenu": [[10, 25, 50,100, -1], [10, 25, 50,100, "All"]],
    });
} );</script></head>'>> $outputDirectory/$domain/$foldername/master_report.html



echo '<body class="dark"><header class="site-header">
<div class="site-title"><p>' >> $outputDirectory/$domain/$foldername/master_report.html
echo "<a style=\"cursor: pointer\" onclick=\"localStorage.setItem('mode', (localStorage.getItem('mode') || 'dark') === 'dark' ? 'bright' : 'dark'); localStorage.getItem('mode') === 'dark' ? document.querySelector('body').classList.add('dark') : document.querySelector('body').classList.remove('dark')\" title=\"Switch to light or dark theme\">🌓 Light|dark mode</a>
</p>
</div>
</header>" >> $outputDirectory/$domain/$foldername/master_report.html


echo '<div id="wrapper"><div id="container">' >> $outputDirectory/$domain/$foldername/master_report.html
echo "<h1 class=\"post-title\" itemprop=\"name headline\">Recon Report for <a href=\"http://$domain\">$domain</a></h1>" >> $outputDirectory/$domain/$foldername/master_report.html
echo "<p class=\"blog-description\">Generated by LazyRecon on $(date) </p>" >> $outputDirectory/$domain/$foldername/master_report.html
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
<tbody>' >> $outputDirectory/$domain/$foldername/master_report.html


cat $outputDirectory/$domain/$foldername/urllist.txt |  sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g'  | while read nline; do
diresults=$(ls $HOME/tools/dirsearch/reports/$nline/ | grep -v old)
echo "<tr>
 <td><a href='./reports/$nline.html'>$nline</a></td>
 <td>$(wc -l $HOME/tools/dirsearch/reports/$nline/$diresults | awk '{print $1}')</td>
 </tr>" >> $outputDirectory/$domain/$foldername/master_report.html
done
echo "</tbody></table>
<div><h2>Possible NS Takeovers</h2></div>
<pre>" >> $outputDirectory/$domain/$foldername/master_report.html
cat $outputDirectory/$domain/$foldername/pos.txt >> $outputDirectory/$domain/$foldername/master_report.html

echo "</pre><div><h2>Wayback data</h2></div>" >> $outputDirectory/$domain/$foldername/master_report.html
echo "<table><tbody>" >> $outputDirectory/$domain/$foldername/master_report.html
[ -s $outputDirectory/$domain/$foldername/wayback-data/paramlist.txt ] && echo "<tr><td><a href='./wayback-data/paramlist.txt'>Params wordlist</a></td></tr>" >> $outputDirectory/$domain/$foldername/master_report.html
[ -s $outputDirectory/$domain/$foldername/wayback-data/jsurls.txt ] && echo "<tr><td><a href='./wayback-data/jsurls.txt'>Javscript files</a></td></tr>" >> $outputDirectory/$domain/$foldername/master_report.html
[ -s $outputDirectory/$domain/$foldername/wayback-data/phpurls.txt ] && echo "<tr><td><a href='./wayback-data/phpurls.txt'>PHP Urls</a></td></tr>" >> $outputDirectory/$domain/$foldername/master_report.html
[ -s $outputDirectory/$domain/$foldername/wayback-data/aspxurls.txt ] && echo "<tr><td><a href='./wayback-data/aspxurls.txt'>ASP Urls</a></td></tr>" >> $outputDirectory/$domain/$foldername/master_report.html
echo "</tbody></table></div>" >> $outputDirectory/$domain/$foldername/master_report.html

echo '</article><article class="post-container-right" itemscope="" itemtype="http://schema.org/BlogPosting">
<header class="post-header">
</header>
<div class="post-content clearfix" itemprop="articleBody">' >> $outputDirectory/$domain/$foldername/master_report.html
echo "<h2><a href='./aqua_out/aquatone_report.html'>View Aquatone Report</a></h2>" >> $outputDirectory/$domain/$foldername/master_report.html
#cat $outputDirectory/$domain/$foldername/ipaddress.txt >> $outputDirectory/$domain/$foldername/master_report.html
echo "<h2>Dig Info</h2>
<pre>
$(dig $domain)
</pre>" >> $outputDirectory/$domain/$foldername/master_report.html
echo "<h2>Host Info</h2>
<pre>
$(host $domain)
</pre>" >> $outputDirectory/$domain/$foldername/master_report.html

echo "<h2>Nmap Results</h2>
<pre>
$(nmap -A -T3 -Pn -p$nmapPorts $domain -oA $outputDirectory/$domain/$foldername/nmap_results/$domain)
</pre>
</div></article></div>
</div></div></body></html>" >> $outputDirectory/$domain/$foldername/master_report.html


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
	cat $outputDirectory/$domain/$foldername/urllist.txt | sed 's/\http\:\/\///g' |  sed 's/\https\:\/\///g' | sort -u | while read line; do
  [ -d $HOME/tools/dirsearch/reports/$line/ ] && ls $HOME/tools/dirsearch/reports/$line/ | grep -v old | while read i; do
  mv $HOME/tools/dirsearch/reports/$line/$i $HOME/tools/dirsearch/reports/$line/$i.old
  done
  done
  }
cleantemp(){

    rm $outputDirectory/$domain/$foldername/temp.txt
	rm $outputDirectory/$domain/$foldername/tmp.txt
    rm $outputDirectory/$domain/$foldername/domaintemp.txt
    rm $outputDirectory/$domain/$foldername/cleantemp.txt
    
}
main(){
if [ -z "${domain}" ]; then
outputDirectory=${subreport[1]}
domain=${subreport[2]}
foldername=${subreport[3]}
subd=${subreport[4]}
report $outputDirectory $domain $subdomain $foldername $subd; exit 1;
fi
  clear
  logo
  if [ -d "$outputDirectory/$domain" ]
  then
    echo "This is a known target."
  else
    mkdir $outputDirectory/$domain
  fi

  mkdir $outputDirectory/$domain/$foldername
  mkdir $outputDirectory/$domain/$foldername/aqua_out/
  mkdir $outputDirectory/$domain/$foldername/aqua_out/parsedjson/
  mkdir $outputDirectory/$domain/$foldername/reports/
  mkdir $outputDirectory/$domain/$foldername/wayback-data/
  mkdir $outputDirectory/$domain/$foldername/screenshots/
  mkdir $outputDirectory/$domain/$foldername/nmap_results/
  touch $outputDirectory/$domain/$foldername/crtsh.txt
  touch $outputDirectory/$domain/$foldername/mass.txt
  touch $outputDirectory/$domain/$foldername/cnames.txt
  touch $outputDirectory/$domain/$foldername/pos.txt
  touch $outputDirectory/$domain/$foldername/alldomains.txt
  touch $outputDirectory/$domain/$foldername/temp.txt
  touch $outputDirectory/$domain/$foldername/tmp.txt
  touch $outputDirectory/$domain/$foldername/domaintemp.txt
  touch $outputDirectory/$domain/$foldername/ipaddress.txt
  touch $outputDirectory/$domain/$foldername/cleantemp.txt
  touch $outputDirectory/$domain/$foldername/master_report.html
  
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

