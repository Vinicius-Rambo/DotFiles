# 🎯 Configs Debian

### Atualize o sistema
```bash
sudo apt upgrade && sudo apt update -y
```

### 📦 Instale o Flatpak
```bash
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo reboot
```

### Principais apps (APT)
```bash
sudo apt install ranger neofetch flameshot g++ git -y
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


### Aparência

    Cursor do mouse: Adwaita
    Aplicativos: Lavender-sea-dark
    Ícones: Zafiro-Nord-black
    Área de trabalho: Catppuccin-mocha-standard-Lavender-Dark

<details>
  <summary> Programação</summary>
    
  ### Vscode (repositorio Oficial)
  ```bash
      sudo apt install wget gpg -y
      wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
      sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
      sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] \
      https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
      rm -f packages.microsoft.gpg
      sudo apt update
      sudo apt install code -y
  ```
  ### Java (OpenJDK completo)
   ```bash
   sudo apt install default-jdk -y
   ```
  ### Python 
  ```bash
  sudo apt install python3 python3-pip python3-venv python3-dev build-essential -y
  ```
  ### C/C++ 
  ```bash
  sudo apt install build-essential gdb -y
  ```
  ### Arduino (IDE)
  ```bash
  sudo apt install arduino -y
  ```
  ### Geany (IDE)
  ```bash
  sudo apt instal geany -y
  ```

</details>

<details>
  <summary> Jogos </summary>

  ### Steam (ativa os repositorios non-free e baixa steam)
  ```bash
  sudo dpkg --add-architecture i386
  sudo apt update
  sudo apt install steam -y
  ```
  ### Heroic Laucher (epic games)
  ```bash
  flatpak install flathub com.heroicgameslauncher.hgl
  sudo reboot
  ```
  ### Minecraft (prism Launcher)
  ```bash
  flatpak install flathub org.prismlauncher.PrismLauncher
  ```
  ### Roblox (Sober)
  ```bash
  flatpak install flathub org.vinegarhq.Sober
  ```
</details>

<details>
  <summary> Cinnamon</summary>

  ### ⚡ Extensões do Cinnamon
    gTile
    Painéis transparentes
</details>



