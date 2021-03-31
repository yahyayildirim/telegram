#!/bin/bash
echo -e "Telegram Son Sürüm İndirelim/Let's Download The Latest Version of Telegram"
wget -c -q -nc -O /tmp/telegram.tar.xz https://telegram.org/dl/desktop/linux --no-check-certificate --show-progress


echo -e "Sıkıştırılmış Dosyayı Çıkaralım/Extract The Downloaded File"
sudo tar -xvf /tmp/telegram.tar.xz -C /opt/


echo -e "Başlatıcımızın İçeriğini Yazalım/Write The Launcher's Content"
echo "[Desktop Entry]
Version=1.0
Name=Telegram Desktop
Comment=Official desktop version of Telegram messaging app
TryExec=/opt/Telegram/Telegram
Exec=/opt/Telegram/Telegram -- %u
Icon=telegram
Terminal=false
StartupWMClass=TelegramDesktop
Type=Application
Categories=Chat;Network;InstantMessaging;Qt;
MimeType=x-scheme-handler/tg;
Keywords=tg;chat;im;messaging;messenger;sms;tdesktop;
X-GNOME-UsesNotifications=true" > ~/.local/share/applications/telegramdesktop.desktop
##Komutların Tamamlandı/Script Finished
echo -e "Komutlar Tamamlandı/Script Finished"
