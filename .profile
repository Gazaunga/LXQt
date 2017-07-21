#Editor
if [ -x vim ] then
export EDITOR=vim
elif
if [ -x vim ] then
export EDITOR=nvim
elif
if [ -x vim ] then
export EDITOR=subl
elif
if [ -x nano ] then
export EDITOR=nano
else
if [ -x vim ] then
export EDITOR=emacs
end
