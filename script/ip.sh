rm /tmp/lo /tmp/GeoIP-legacy.csv > /dev/null 2>&1
/usr/bin/wget -q "https://mailfud.org/geoip-legacy/GeoIP-legacy.csv.gz" -O  /tmp/GeoIP-legacy.csv.gz
gzip -d /tmp/GeoIP-legacy.csv.gz
echo "###############################################################
#               SCRIPT DE INSTALLATION r100-rcxx              #
#	       CREATED EXCLUSIVE FOR: MULTICS.ES	   	      #
#              LAST EDITION echo `date +%d-%m-%Y` BY PIFO	      #
###############################################################
" > /tmp/lo
cat /tmp/lo /tmp/GeoIP-legacy.csv > /usr/local/etc/multics/FILE/ip2country.csv
echo Update completed 
exit 0