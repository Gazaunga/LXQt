$browser=
$terminal=
$filebrowser=

export PATH=$PATH:$HOME/.local:$PATH
export TIMEFORMAT=%R
export BROWSER=$browser
export FILEBROWSER=$filebrowser
export TERMINAL=$terminal

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
elif
if [ -x vim ] then
export EDITOR=emacs
else
if [ -x rubymine ] then
export EDITOR=rubymine
end

# remap shift-space to underscore for 60% keyboards
xmodmap -e 'keycode 65 = space underscore space'
