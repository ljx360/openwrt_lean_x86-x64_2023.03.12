

ARG_COUNT=$#

if [ $ARG_COUNT -eq 2 ];then
echo ""
#echo "THE ARG_COUNT IS NOT 2,IS ${ARG_COUNT}"




CONFIG_FILE=/workdir/openwrt/.config
URL=$1
EXT_CONFIG_FILE=$2





if [ ! -e $CONFIG_FILE ];then


echo ""
echo "try down [${URL}] to [${EXT_CONFIG_FILE}]"
wget -d -O $EXT_CONFIG_FILE $URL

if [ -e $EXT_CONFIG_FILE ];then
echo ""
echo "copy $EXT_CONFIG_FILE TO $CONFIG_FILE"
cp $EXT_CONFIG_FILE $CONFIG_FILE
else
echo ""
echo "MISS $EXT_CONFIG_FILE"
fi


else

echo ""
echo "EXIST $CONFIG_FILE"

fi


fi
