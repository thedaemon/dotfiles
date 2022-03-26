# Defined via `source`
function cufetch --wraps='clear && ufetch | lolcat -b && cal | lolcat -r' --description 'alias cufetch=clear && ufetch | lolcat -b && cal | lolcat -r'
  clear && ufetch | lolcat -b && cal | lolcat -r $argv; 
end
