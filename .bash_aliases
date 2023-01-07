alias vpnatl='sudo cyberghostvpn --traffic --country-code US --city "Atlanta" --connect'
alias vpntorrent='sudo cyberghostvpn --torrent --country-code US --connect'
alias vpntorrentcr='sudo cyberghostvpn --torrent --country-code CR --connect'

alias backupall='rsync -azP /home/clay/projects/ /media/clay/Smol/Backups/Projects/ && rsync -azP /home/clay/Documents/ /media/clay/Smol/Backups/Linux/Documents/ && rsync -azP /home/clay/Downloads/ /media/clay/Smol/Backups/Linux/Downloads/ && rsync -azP /home/clay/Pictures/ /media/clay/Smol/Backups/Linux/Pictures/ && rsync -azP /home/clay/Videos/ /media/clay/Smol/Backups/Linux/Videos/ && rsync -azP /home/clay/Music/ /media/clay/Smol/Backups/Linux/Music/'

alias cls='clear && ufetch'
alias musikcube='musikcube.app'
alias mc='. /usr/share/mc/bin/mc-wrapper.sh'
alias df='df -h'
alias tokodon='flatpak run org.kde.tokodon'
