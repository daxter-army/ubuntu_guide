# Powerline

## Installing Powerline
### Prerequisites
* python 3.x

### Installation
This guide is written with reference to ubuntu, however the setup process remains the same for the other distros/macOS.

**1.** Install powerline and related files
```bash
  pip3 install --user powerline-status
  pip3 install powerline-gitstatus
```

**2.** To find the locations of the installed files, run
```bash
  find / 2> /dev/null | grep powerline-daemon
```
*Note the addresses ending with **powerline-daemon** and **powerline-daemon.service**, you will need them later. For me, these are*
```bash
  /home/daxter/.local/lib/python3.8/site-packages/powerline/dist/systemd/powerline-daemon.service
  /home/daxter/.local/bin/powerline-daemon
```

**3.** Run
```bash
  find / 2> /dev/null | grep powerline.sh
```
Note the address ending with **bash/powerline.sh**

**NOTE:** This subjects to be changed depending upon which terminal you are using, the above line holds true for bash terminals. In zsh, you may wanna save the addess ending with **zsh/powerline.sh**

**4.** Open your ~/.bashrc or ~/.bash_profile (or ~/.zshrc or ~/.zsh_profile on macOS). If it do not exists, create one.
```bash
  gedit ~/.bashrc
```
Now in the file, append these lines at the end
```bash
  # powerline
  export PATH="$PATH:/home/daxter/.local/bin/"
  export LC_ALL=en_US.UTF-8
  # when you are tuning powerline's default.json, append -r in the command below, to see changes quickly, after closing and reopening the terminal
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  # put here location with respect to your system, the address you saved earlier
  source /home/daxter/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
```
**5.** Create the folloowing directories
```bash
  mkdir -p ~/.config/powerline/colorschemes/
  mkdir -p ~/.config/powerline/themes/shell/
```

**6.** Copy the files from the powerline directories (we saved earlier, somewhere!), to the newly created directories and paste the lines, from the file
```bash
  cp /home/daxter/.local/lib/python3.8/site-packages/powerline/dist/systemd/powerline/config_files/colorschemes/default.json ~/.config/powerline/colorschemes
  cp /home/daxter/.local/lib/python3.8/site-packages/powerline/dist/systemd/powerline/config_files/themes/shell/default.json ~/.config/powerline/themes/shell
  gedit ~/.config/colorschemes/default.json
  gedit ~/.config/themes/shell/default.json
```
*You can changes colors by editting ~/.config/powerline/themes/shell/default.json and can edit gedit ~/.config/powerline/colorschemes/default.json to show git status on your terminal*

**7.** Now you can run ```source ~/.bashrc``` and see the changes

## Installing custom Powerline fonts
Now to remove those unknown letters in the terminal, we need to install custom powerline fonts
**8.** Clone the powerline fonts repo
```bash
  git clone https://github.com/powerline/fonts.git --depth=1 powerline_fonts
```

**9.** Install the fonts from **install.sh** file by going in the directory and running ```./install.sh```

**10.** Open the preferences of your terminal and select any of the fonts we just installed some time ago, e.g *source pro*

## after theses steps powerline should be working fine in your terminal, now you just need to add font in vscode to support the vscode terminal formatting
**11.** Go here and download the font .zip file [github link](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Meslo.zip) and name the folder as **Meslo**
**12.** Move this folder to **/usr/share/fonts/truetype/**
**13.** Hit ```sudo fc-cache -vf /usr/share/fonts/``` in the terminal
**14.** Add ```"terminal.integrated.fontFamily": "MesloLGM Nerd Font",``` in vscode's **settings.json** and save it.
**15.** Changes should be now reflecting in the terminal, if not then restart your vscode.

Now enjoy your new cool terminal!
**Note:** You can run ```fc-list | grep -i "meslo"```, to see available fonts to install
