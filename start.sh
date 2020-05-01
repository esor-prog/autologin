#!/bin/sh

while :
do
date

status=$(curl -s --connect-timeout 15 http://www.laatansa.online/status.txt)
echo $status;

if [ "$status" = 'Esor' ]
then
	echo "Connected";
else
	echo "Not Connected";
	curl 'https://welcome2.wifi.id/authnew/login/check_login.php?ipc=10.133.0.136&gw_id=WAG2-D3-LBG&mac=b0:1d:b8:e5:2f:a7&redirect=%ohttp://192.168.1.1/&wlan=APe4d3.f171.50b4:@wifi.id' \
  -H 'authority: welcome2.wifi.id' \
  -H 'accept: application/json, text/javascript, */*; q=0.01' \
  -H 'x-requested-with: XMLHttpRequest' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'origin: https://welcome2.wifi.id' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://welcome2.wifi.id/login/?gw_id=WAG2-D3-LBG&client_mac=b0:1d:b8:e5:2f:a7&wlan=APe4d3.f171.50b4:@wifi.id&sessionid=0400FFFF7804DBC0-5E9D0C64&redirect=%ohttp://192.168.1.1/' \
  -H 'accept-language: id,en-US;q=0.9,en;q=0.8' \
  -H 'cookie: _ga=GA1.2.1483699295.1587145656; SERVERID=wpwifi1; PHPSESSID=u28dusu52enrt0s5nnjjrommi3; default_wifi=8htbpn99s1lib26hqgs4lgpiee9ve7tk; _gid=GA1.2.943904632.1587351132' \
  --data 'username=982121694691xxx@spin2&password=xxx' \

fi

sleep 5
done
