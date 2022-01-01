# ...REST OF THE FILE

# custom aliases
alias c='code .'
alias x='exit'
alias p='poweroff'
alias r='reboot'

# android studio
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export ANDROID_HOME="/home/daxter/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# powerline
export PATH="$PATH:/home/daxter/.local/bin/"
export LC_ALL=en_US.UTF-8
# when you are tuning powerline append -r in the command below
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /home/daxter/.local/lib/python3.8/site-packages/powerline/bindings/bash/powerline.sh
