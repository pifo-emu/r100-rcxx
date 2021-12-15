if ps x |grep -v grep |grep -c /usr/local/bin/multics.es >/dev/null
then
echo multics... ok
else
echo multics... restarting
/usr/local/bin/multics.es -b -C /usr/local/etc/multics/multics.cfg
sleep 5
ps -ef | grep multics.es | grep -v grep | awk '{print }' |  grep '..' | xargs kill
fi

if [[ $(du -s /var/tmp/multics.log |  awk '{ print $1" " }')  > 3145732 ]]
then
    rm /var/tmp/multics.log
fi
