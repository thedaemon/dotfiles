# Defined via `source`
function cls --wraps='clear && lscat' --description 'alias cls=clear && lscat'
  clear && lscat $argv; 
end
