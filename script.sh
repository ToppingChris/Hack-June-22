#!/bin/sh

$SOURCE_INSTANCE_NAME=sharecare-pg-instance
$TARGET_INSTANCE_NAME=main-instance
# create backup of instance
# gcloud sql backups create \
# --async \
# --instance=SOURCE_INSTANCE_NAME

for id in $(gcloud sql backups list --instance sharecare-pg-instance --format="value(id)")
    do
        BACKUP_ID=$id
done
# $BACKUP_ID = gcloud sql backups list --instance team2-instance

gcloud sql backups restore $BACKUP_ID \
--restore-instance=team2-instance \
--backup-instance=sharecare-pg-instance

if [ $result -eq 1 ]
then
   exit 0
else
   exit 1
fi