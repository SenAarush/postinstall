sudo apt autoremove kwrite vlc -y
sudo pkcon refresh && update -y
##Add the zen kernel for better performance
sudo add-apt-repository ppa:damentz/liquorix -y
##Add brave repo
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
##Add vscodium repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
##Add slimbook battery repo
sudo add-apt-repository ppa:slimbook/slimbook -y
##Add Kdenlive repo
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
##Install ani-cli
git clone https://github.com/pystardust/ani-cli && cd ani-cli
sudo cp ani-cli /usr/local/bin/ani-cli
##Add protonmail repo
##Install packages
sudo pkcon refresh
sudo apt install muon mpv neofetch kdenlive codium slimbookbattery brave-browser linux-image-liquorix-amd64 linux-headers-liquorix-amd64 obs-studio gnome-boxes -y
sudo apt autoremove
## Add custom cursor theme
git clone https://github.com/SenAarush/cursor
sudo mv cursor /usr/share/icons 
