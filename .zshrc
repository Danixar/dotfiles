# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#############################################################################################################
#############################################################################################################

export ZSH="$HOME/.oh-my-zsh"

# Colour preset: Dark Background
# Fonts: RobotoMono Nerd Font
# Opaque: ~50%

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"

# Prompt Segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context root_indicator dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs custom_wifi_signal ip time battery)

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\uf460%f "

# Left Prompt
POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='${P9K_CONTENT} $(whoami | grep -v "^root\$")'
POWERLEVEL9K_OS_ICON_FOREGROUND=000
POWERLEVEL9K_OS_ICON_BACKGROUND=006
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=000
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=208
POWERLEVEL9K_DIR_HOME_FOREGROUND=000
POWERLEVEL9K_DIR_HOME_BACKGROUND=006
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=000
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=006
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=000
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=006
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=000
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=195
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=000
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=185
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=000
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=191
POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '

# Right Prompt
POWERLEVEL9K_STATUS_OK_FOREGROUND=034
POWERLEVEL9K_STATUS_OK_BACKGROUND=015
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=124
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=015
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=000
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=208
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=000
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=006
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND=000
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND=015
zsh_wifi_signal(){
        local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
        local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

        if [ "$airport" = "Off" ]; then
                local color='%F{black}'
                echo -n "%{$color%}Wifi Off"
        else
                local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
                local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
                local color='%F{black}'

                [[ $speed -gt 100 ]] && color='%F{black}'
                [[ $speed -lt 50 ]] && color='%F{red}'

                echo -n "%{$color%}$speed Mbps \uf1eb%{%f%}" # removed char not in my PowerLine font
        fi
}
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d/%m/%y}"
POWERLEVEL9K_TIME_BACKGROUND=015
POWERLEVEL9K_TIME_ICON=''
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=034
POWERLEVEL9K_BATTERY_LOW_FOREGROUND=015
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=014
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND=022
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=006
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND=000
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=006
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND=000
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

#############################################################################################################
#############################################################################################################

CASE_SENSITIVE="false"
HYPHEN_INSENSITIVE="false"
DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="false"
export UPDATE_ZSH_DAYS=14
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
	aws
	git
	npm
	iterm2
  	osx
 	docker
  	zsh-autosuggestions
  	zsh-syntax-highlighting
  	zsh-completions
)

source $ZSH/oh-my-zsh.sh

#############################################################################################################
#############################################################################################################

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f $HOME/.profile ]; then
  source $HOME/.profile
fi
