rm /tmp/lo /tmp/GeoIP-legacy.csv > /dev/null 2>&1
echo "DIME LA RUTA DE TU IP2COUNTRY"
read -p "Enter La ruta: " -r primary_domain
read -p "Enter Nombre de tu IP2COUNTRY: " -r primary_domain2
/usr/bin/wget -q "https://mailfud.org/geoip-legacy/GeoIP-legacy.csv.gz" -O  /tmp/GeoIP-legacy.csv.gz
gzip -d /tmp/GeoIP-legacy.csv.gz
echo "###############################################################
#               SCRIPT DE INSTALLATION r100-rcxx              #
#	       CREATED EXCLUSIVE FOR: MULTICS.ES	   	      #
#              LAST EDITION echo `date +%d-%m-%Y` BY PIFO	      #
###############################################################
" > /tmp/lo
cat /tmp/lo /tmp/GeoIP-legacy.csv > $primary_domain/$primary_domain2
echo Update completed 
