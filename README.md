# 🎯 Configs Debian

### 📦 Instale o Flatpak

```bash
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo reboot
```

### Principais apps (APT)
```bash
sudo apt install geany -y &&
sudo apt install ranger -y &&
sudo apt install neofetch -y &&
sudo apt install flameshot -y &&
sudo apt-get install g++ -y
```

### Ulauncher
```bash
sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu jammy main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher
```
lembre-se de sempre deixar ele em autostart.
### trocar a o gestor de sessão:
 ```bash
    sudo apt install gdm3 -y
    sudo reboot 
 ```   

### Apps Flatpak
 #### 📁 GitHub Desktop
  ```bash
flatpak install flathub io.github.shiftey.Desktop -y
 ```
 #### 💻 VSCode
  ```bash
flatpak install flathub com.visualstudio.code -y
```

### 🎨 Aparência

    Cursor do mouse: Adwaita
    Aplicativos: Lavender-sea-dark
    Ícones: Zafiro-Nord-black
    Área de trabalho: Catppuccin-mocha-standard-Lavender-Dark

<details>
  <summary>💻 Cinnamon</summary>

  ### ⚡ Extensões do Cinnamon
  
    gTile
    Painéis transparentes
    
</details>



