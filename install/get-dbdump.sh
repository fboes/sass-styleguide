#!/bin/bash
set -e
cd ${0%/*}/..
source install/config.sh

case "$1" in
	live)
		ssh $REMOTE_HOST "mysqldump -u $REMOTE_DB_USR -p -h localhost $REMOTE_DB_DB" > install/mysql/dbdump.sql
		;;
	*)
		mysqldump -u $LOCAL_DB_USR -p$LOCAL_DB_PWD  --no-data --skip-comments --add-drop-table $LOCAL_DB_DB > install/mysql/dbdump.sql
		# mysqldump -u $LOCAL_DB_USR -p$LOCAL_DB_PWD   --no-create-info --skip-comments --insert-ignore $LOCAL_DB_DB $DB_TABLE >> install/mysql/dbdump.sql
		;;
esac