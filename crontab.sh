# shellcheck disable=SC2035,SC2046,SC2086,SC2148,SC2164,SC2211
# SC2035: Use ./*glob* or -- *glob* so names with dashes won't become options.
# SC2046: Quote this to prevent word splitting.
# SC2086: Double quote to prevent globbing and word splitting.
# SC2148: Tips depend on target shell and yours is unknown. Add a shebang.
# SC2164: Use 'cd ... || exit' or 'cd ... || return' in case cd fails.
# SC2211: This is a glob used as a command name. Was it supposed to be in ${..}, array, or is it missing quoting?

0 3,15 * * * certbot renew --quiet
0 6 * * * S=drew.invadelabs.com; D=/var/www/$S/sitemap; mv $D/sitemap-$S-NS_0-0.xml $D/sitemap-$S-NS_0-0.$(date '+\%Y\%m\%d\%H\%M\%S').xml; php /var/www/$S/maintenance/generateSitemap.php --compress no --fspath=/var/www/$S/sitemap/ --identifier=$S --urlpath=https://$S/ --server=https://$S | mailx -a 'Content-Type: text/html' -s "DrewWiki Sitemap Updated $DATE" drewderivative@gmail.com
0 6 * * * DATE=$(date '+\%Y\%m\%d\%H\%M\%S'); cd /root; php /var/www/drew.invadelabs.com/maintenance/sqlite.php -q --backup-to /root/drew_wiki."$DATE".sqlite; tar -cJf /root/invadelabs.com.$DATE.tar.xz -C /etc apache2/ -C /etc letsencrypt/ -C /var/www/drew.invadelabs.com LocalSettings.php -C /root drew_wiki."$DATE".sqlite; /snap/bin/drive push -no-prompt -destination /Backup/Web invadelabs.com."$DATE".tar.xz >/dev/null; rm /root/invadelabs.com."$DATE".tar.xz /root/drew_wiki."$DATE".sqlite; /snap/bin/drive stat Backup/Web/invadelabs.com.$DATE.tar.xz | highlight --syntax bash --inline-css | mailx -a 'Content-Type: text/html' -s "invadelabs.com backup $DATE" drewderivative@gmail.com
0 * * * * hostname invadelabs.com
