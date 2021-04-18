# SABNZBD-PRIVADO-VPN

This image fetches the VPN configurations from Privado. Validates that OpenVPN is installed. Then runs SABNZBD through the Privado VPN

## Environment Variables 

| Variable Name | Expected Value | Example |
| :------------ | :------------- | :------ |
| PUID | Int | 1000 |
| PGID | Int | 1000 |
| TZ | TimeZone | America/Denver |
| PRIVADOUSER | username | myuser |
| PRIVADOPASS | password | myDumpPass |
| PRIVADOENDPOINT | string | lax-012 |

* You can find a list of timezones [here](https://www.epochconverter.com/timezones).
* You can find a list of Privado Endpoints [here](https://app.privadovpn.com/server-list) (Must be logged in to view)