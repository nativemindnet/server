. /opt/plot.worker/config/config.sh



#https://github.com/astrada/google-drive-ocamlfuse/blob/beta/doc/Configuration.md

MNTLABEL="mntlabel"
ROOT_FOLDER="1jcyr6SeBP7_Jv7tCGdlFUGE-a0Pcuo-S"
TEAM_DRIVE_ID=""
LOG_DIRECTORY=""

MNTLABEL=$1
MNTHOST=$2
ROOT_FOLDER=`echo $GOOGLEFOLDERS2 | $JQ -r ".$MNTLABEL"`


TEAM_DRIVE_ID=`echo $GOOGLEDRIVES2 | $JQ -r ".$MNTLABEL"`
CACHE_DIRECTORY=/mnt/disk/sd2/google/cache/$MNTLABEL/
LOG_DIRECTORY=""

LOG_TO=/mnt/disk/sd2/google/log/$MNTLABEL.log
#LOG_TO=/var/log/plot.worker/google_$MNTLABEL.log


echo "acknowledge_abuse=false
apps_script_format=desktop
apps_script_icon=
async_upload_queue=false
async_upload_queue_max_length=1
async_upload_threads=1
autodetect_mime=true
background_folder_fetching=false
cache_directory=$CACHE_DIRECTORY
client_id=
client_secret=
connect_timeout_ms=3000
curl_debug_off=false
data_directory=
debug_buffers=false
delete_forever_in_trash_folder=false
desktop_entry_as_html=false
desktop_entry_exec=
disable_trash=false
docs_file_extension=true
document_format=desktop
document_icon=
download_docs=true
drawing_format=desktop
drawing_icon=
form_format=desktop
form_icon=
fusion_table_format=desktop
fusion_table_icon=
keep_duplicates=false
large_file_read_only=false
large_file_threshold_mb=16
log_directory=$LOG_DIRECTORY
log_to=$LOG_TO
lost_and_found=false
low_speed_limit=0
low_speed_time=0
map_format=desktop
map_icon=
max_cache_size_mb=512
max_download_speed=0
max_memory_cache_size=10485760
max_retries=8
max_upload_chunk_size=1099511627776
max_upload_speed=0
memory_buffer_size=1048576
metadata_cache_time=60000000
metadata_memory_cache=true
metadata_memory_cache_saving_interval=30000000
mv_keep_target=false
presentation_format=desktop
presentation_icon=
read_ahead_buffers=0
read_only=false
redirect_uri=
root_folder=$ROOT_FOLDER
scope=
service_account_credentials_path=
service_account_user_to_impersonate=
spreadsheet_format=desktop
spreadsheet_icon=
sqlite3_busy_timeout=500000
stream_large_files=true
team_drive_id=$TEAM_DRIVE_ID
umask=0o022
verification_code=
write_buffers=false"
