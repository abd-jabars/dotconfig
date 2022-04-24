parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[31m\] \[\e[000m\]\[\e[33m\]\W \[\e[000m\]\[\e[32m\]\\$\[\e[000m\]\[\e[36m\]\$(parse_git_branch)\[\033[00m\] \[\e[000m\]\[\e[34m\]> \[\e[000m\]"

# git graph
alias graph="git log --all --decorate --oneline --graph"

# yt-dlp
alias ytmp3="yt-dlp -x --audio-format mp3 --audio-quality 0 --add-metadata --embed-thumbnail"
alias ytvid='yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'
