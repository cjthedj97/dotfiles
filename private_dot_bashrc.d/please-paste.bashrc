# Works with X11
function pleasepaste() {
sleep 2.2 && xdotool type --clearmodifiers --delay 50 "$(xclip -o)"
}