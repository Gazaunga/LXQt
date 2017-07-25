#!/bin/sh
custom="$1"
uname="$(uname)"
distro="$(cat /etc/*release | grep -w NAME | cut -d\" -f2)"

printf "DETECTED: $uname-$distro\n" >&2

os=""
cmd=""
case "$uname-$distro" in
    'Linux-Arch Linux')
        os="arch"
        cmd="pacaur -S --noconfirm"
        ;;
    *)
        printf "$uname-$distro NOT SUPPORTED\n" >&2
        exit 1
        ;;
esac

lst_fname="deps-$os"
[ -n "$custom" ] && lst_fname="$lst_fname-$custom"
$cmd $(cat "$lst_fname.lst")
