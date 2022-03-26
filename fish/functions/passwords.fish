# Defined via `source`
function passwords --wraps='clear && pass | lolcat -b' --description 'alias passwords=clear && pass | lolcat -b'
  clear && pass | lolcat -b $argv; 
end
