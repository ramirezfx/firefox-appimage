#!/bin/bash

IMGNAME=firefox.png
DESKTOPFILE=firefox-appimage.desktop

APPPATH=$(kdialog --getopenfilename)

echo "[Desktop Entry]" > $DESKTOPFILE
echo "Version=1.0" >> $DESKTOPFILE
echo "Name=Firefox Web Browser-AppImage" >> $DESKTOPFILE
echo "Comment=Browse the World Wide Web" >> $DESKTOPFILE
echo "GenericName=Web Browser" >> $DESKTOPFILE
echo "Keywords=Internet;WWW;Browser;Web;Explorer" >> $DESKTOPFILE
echo "Exec=$APPPATH %u" >> $DESKTOPFILE
echo "ETerminal=false" >> $DESKTOPFILE
echo "X-MultipleArgs=false" >> $DESKTOPFILE
echo "Type=Application" >> $DESKTOPFILE
echo "Icon=firefox" >> $DESKTOPFILE
echo "Categories=GNOME;GTK;Network;WebBrowser;" >> $DESKTOPFILE
echo "MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;" >> $DESKTOPFILE
echo "StartupNotify=true" >> $DESKTOPFILE
echo "Actions=new-window;new-private-window;" >> $DESKTOPFILE
echo "[Desktop Action new-window]" >> $DESKTOPFILE
echo "Name=Open a New Window" >> $DESKTOPFILE
echo "Exec=$APPPATH -new-window" >> $DESKTOPFILE
echo "[Desktop Action new-private-window]" >> $DESKTOPFILE
echo "Name=Open a New Private Window" >> $DESKTOPFILE
echo "Exec=$APPPATH -private-window" >> $DESKTOPFILE

sudo mv $DESKTOPFILE /usr/share/applications
sudo cp $IMGNAME /usr/share/icons
