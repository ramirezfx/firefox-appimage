LANG=de
VERSION=$(wget --spider -S --max-redirect 0 "https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=$LANG" 2>&1 | sed -n '/Location: /{s|.*/firefox-\(.*\)\.tar.*|\1|p;q;}')
DLLINK=https://download-installer.cdn.mozilla.net/pub/firefox/releases/$VERSION/linux-x86_64/de/firefox-$VERSION.tar.bz2
wget -O firefox-latest.tar.bz2 $DLLINK
tar xf firefox-latest.tar.bz2
rm firefox-latest.tar.bz2
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
APPDIR=firefox
chmod 700 AppRun
chmod 700 firefox.desktop
cp AppRun $APPDIR
cp firefox.desktop $APPDIR
cp firefox.png $APPDIR/
./appimagetool-x86_64.AppImage $APPDIR
rm -Rf firefox appimagetool-x86_64.AppImage
