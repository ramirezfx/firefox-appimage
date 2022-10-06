ARCH=x86_64
VERSION=$(curl https://github.com/srevinsaju/Firefox-Appimage/releases/ | grep "Latest Continous build for firefox v" | cut -d v -f 2 | cut -d "<" -f 1 | head -n 1)
DLURL=https://github.com/srevinsaju/Firefox-Appimage/releases/download/firefox/firefox-$VERSION-$ARCH.AppImage
wget -O Firefox_Web_Browser-x86_64.AppImage "$DLURL"
chmod +x Firefox_Web_Browser-x86_64.AppImage
