cd /opt
curl -LO https://zoom.us/client/latest/zoom_x86_64.tar.xz
tar -xvf zoom*.tar.xz
cd zoom
./ZoomLauncher
cd <full-path-to-zoom>/RegisterProtocol
echo "Icon=<full-path-to-zoom>/Zoom.png" >> ZoomLauncher.desktop
# may need for HiDPI screens
sed -i 's|^Exec=.*$|Exec=/usr/bin/env QT_SCALE_FACTOR=2 ZoomLauncher %U|' ZoomLauncher.desktop
bash RegisterProtocol.sh
