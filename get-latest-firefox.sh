BASEURL="https://github.com"
FILELINK=$(wget -O - https://github.com/srevinsaju/Firefox-Appimage/releases |   grep -io '<a href=['"'"'"][^"'"'"']*['"'"'"]' |   sed -e 's/^<a href=["'"'"']//i' -e 's/["'"'"']$//i' | grep .AppImage | grep firefox-[0-9] | grep -v .zsync | head -n 1)
wget -O "firefox-latest.AppImage" $BASEURL$FILELINK
chmod 700 firefox-latest.AppImage
