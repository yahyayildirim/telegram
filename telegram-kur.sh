#!/bin/bash
echo -e "Telegram Son Sürüm İndirilecek... Lütfen bekleyin."
wget -c -q -nc -O /tmp/telegram.tar.xz https://telegram.org/dl/desktop/linux --no-check-certificate --show-progress
echo
echo -e "Program Kuruluyor...."
sudo tar -xvf /tmp/telegram.tar.xz -C /opt/
echo
echo -e "Kısayol oluşturuluyor...."
echo "[Desktop Entry]
Version=1.0
Name=Telegram Desktop
Comment=Telegram Masaüstü Uygulaması
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
echo
echo -e "Program başarılı bir şekilde kuruldu."
