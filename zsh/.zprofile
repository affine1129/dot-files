# Itermの見た目設定
PROMPT='%F{green}%D%f %F{green}%T%f %F{magenta}%c%f %F{green}$%f '

eval "$(/opt/homebrew/bin/brew shellenv)"
# anyenvの設定
eval "$(anyenv init -)"

# nvmの設定
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# オプション設定
setopt auto_cd
autoload -U zmv
set -o vi

# 削除用コマンド
if type trash-put &> /dev/null
then
    alias rm=trash-put
fi

# 省略用コマンド
alias ...='cd ../../../'
alias ..='cd ../../'
alias .='cd ../'

alias n='cd ~ & nvim -c "Fern bookmark:///"'
alias ls='ls -G'

# 設定ファイル用コマンド
alias re='source ~/.zshrc'
alias mk_zsh='nvim ~/.zshrc'
alias mk_alias='nvim ~/.config/zsh/.zprofile'
alias mk_n='nvim ~/.config/nvim/init.vim'
alias karabiner="nvim ~/.config/karabiner/karabiner.json"

# 移動コマンド
alias cd_notion='cd "/Users/ittokuryota/Library/Mobile Documents/iCloud~com~omz-software~Pythonista3/Documents/damp-escarpment-64145"'

# Open Command
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
function yahoo(){
	lynx "https://search.yahoo.co.jp/search?p=$1 $2 $3 $4 $5"
}
function zoom(){
	open "zoommtg://zoom.us/join?confno=$1?pwd=$2"
}
function tonvim(){
	TOVIMTMP=~/.tonvim_tmp_`date +%Y-%m-%d_%H-%M-%S.txt`
	cat > $TOVIMTMP 
	nvim $TOVIMTMP < /dev/tty > /dev/tty
	cat $TOVIMTMP 
	rm $TOVIMTMP 
}

function slogs(){
        awslogs get /aws/lambda/sync-notion-automator --watch
}

function aslogs(){
        awslogs get /aws/lambda/async-notion-automator --watch
}
