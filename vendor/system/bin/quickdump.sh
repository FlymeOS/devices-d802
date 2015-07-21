#!/system/bin/sh
FFLAG=false

getopts f OPTION
case "$OPTION" in
f)
    FFLAG=true
    ;;
esac

# Check if QuickDump is enabled
PROP_QUICKDUMP=`getprop persist.service.qdump.enable`
if [  "1" -ne "$PROP_QUICKDUMP" ] && [ $FFLAG == false ]; then
    exit 0
fi

# Build emulated storage paths when appropriate
# See storage config details at http://source.android.com/tech/storage/
if [ -n "$EMULATED_STORAGE_SOURCE" ]; then
    WRITE_PATH="$EMULATED_STORAGE_SOURCE/0"
    READ_PATH="$EMULATED_STORAGE_TARGET/0"
else
    WRITE_PATH="$EXTERNAL_STORAGE"
    READ_PATH="$EXTERNAL_STORAGE"
fi

# path for dumpreports, quickdump
TIMESTAMP=`date +'%Y-%m-%d-%H-%M-%S'`
PATH_QUICKDUMP="/data/local/tmp/quickdump"
QUICKDUMP_OUTPUT=quickdump-$TIMESTAMP

echo QUICKDUMP output : "$QUICKDUMP_OUTPUT"

rm -rvf "$PATH_QUICKDUMP"
mkdir -p "$PATH_QUICKDUMP"
chmod 777 "$PATH_QUICKDUMP"
chown shell:shell "$PATH_QUICKDUMP"

# run dumpstate
echo /system/bin/dumpstate -zp -o $PATH_QUICKDUMP/$QUICKDUMP_OUTPUT
/system/bin/dumpstate -zp -o $PATH_QUICKDUMP/$QUICKDUMP_OUTPUT

PATH_DUMPREPORTS=$WRITE_PATH/dumpreports
READ_PATH_DUMPREPORTS=$READ_PATH/dumpreports

# create directories if needed
if [ ! -e "$PATH_DUMPREPORTS" ]; then
    mkdir -p "$PATH_DUMPREPORTS"
fi

echo cp -rv $PATH_QUICKDUMP "$PATH_DUMPREPORTS/"
cp -rv $PATH_QUICKDUMP "$PATH_DUMPREPORTS/"

echo rm -rvf "$PATH_QUICKDUMP"
rm -rvf "$PATH_QUICKDUMP"

# prevent media scanning
touch "$PATH_DUMPREPORTS/.nomedia"

# broadcast finished intent
echo check if there is dump existed at "$PATH_DUMPREPORTS/quickdump/$QUICKDUMP_OUTPUT.txt.gz"
if [  -e "$PATH_DUMPREPORTS/quickdump/$QUICKDUMP_OUTPUT.txt.gz" ]; then
    echo am broadcast -a com.lge.android.quickdump.intent.QUICKDUMP_COMPLETED --es path $READ_PATH_DUMPREPORTS --ez fflag $FFLAG
    /system/bin/sh /system/bin/am broadcast -a com.lge.android.quickdump.intent.QUICKDUMP_COMPLETED --es path $READ_PATH_DUMPREPORTS --ez fflag $FFLAG
else
    echo am broadcast -a com.lge.android.quickdump.intent.QUICKDUMP_FAILED --ez fflag $FFLAG
    /system/bin/sh /system/bin/am broadcast -a com.lge.android.quickdump.intent.QUICKDUMP_FAILED --ez fflag $FFLAG
fi
