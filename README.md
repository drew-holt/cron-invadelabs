# cron-invadelabs [![Build Status](https://travis-ci.org/invadelabs/cron-invadelabs.svg?branch=master)](https://travis-ci.org/invadelabs/cron-invadelabs) [![Code Coverage](https://codecov.io/gh/invadelabs/cron-invadelabs/branch/master/graph/badge.svg)](https://codecov.io/gh/invadelabs/cron-invadelabs/branch/master)

Supporting scripts I've written for [invadelabs.com](https://invadelabs.com).

| script               | function                                                            |
| -------------------- | ------------------------------------------------------------------- |
| check_ddns.sh        | update google domains ddns on cron                                  |
| check_docker.sh      | slack a message when nagios docker containers goes up or down       |
| check_internet.sh    | if eth device down then set gateway to lte, restore when recovered  |
| check_letsencrypt.sh | cron to sync letsencrypt wildcard among hosts                       |
| check_lynis.sh       | mail over weekly cron of lynis audit                                |
| check_mongo_mybg.py  | Nagios script to check last time of xDrip entry to mongo db         |
| check_temp.sh        | Nagios plugin to check temp from /temp entry                        |
| dd-wrt_backup.sh     | simple DD-WRT config backup script                                  |
| es_errors.sh         | cron to check for warning/fail/error/denied in ES and email report  |
| gdrive_backup.sh     | google drive backup script on cron for invadelabs.com and drew-serv |
| gen_sitemap.sh       | create new mediawiki sitemap for search engines                     |
| mysql_backup.sh      | simple mysql backup script                                          |
| wiki_to_md.sh        | convert mediawiki to markdown, upload to github                     |
