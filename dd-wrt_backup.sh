#!/bin/sh

IP_ADDR="192.168.1.1"
USER=""
PASS=""
DATE=$(date '+%Y%m%d%H%M%S')
LOGFILE="/home/drew/cron/dd-wrt_backup.log"
DIR="/mnt/raid5/drew/backup/dd-wrt"
CFEFILE="$DIR/cfe.bin-$DATE";
NVRAMBAKFILE="$DIR/nvrambak.bin-$DATE";
TRAFFDATA="$DIR/traffdata.bak-$DATE";

wget -a $LOGFILE --user=$USER --password=$PASS \
	http://$IP_ADDR/backup/cfe.bin -O "$CFEFILE";

wget -a $LOGFILE --user=$USER --password=$PASS \
	http://$IP_ADDR/nvrambak.bin -O "$NVRAMBAKFILE";

wget -a $LOGFILE --user=$USER --password=$PASS \
	http://$IP_ADDR/traffdata.bak -O "$TRAFFDATA";

tar -cJvf $DIR/dd-wrt-"$DATE".tar.xz "$CFEFILE $TRAFFDATA $NVRAMBAKFILE";
rm "$CFEFILE $TRAFFDATA $NVRAMBAKFILE";
