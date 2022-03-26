# Defined via `source`
function lscat --wraps='ls -C | lolcat -b' --description 'alias lscat=ls -C | lolcat -b'
  ls -C | lolcat -b $argv; 
end
