#!/bin/bash

realpath() { [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"; }
ROOT=$(dirname "$(realpath "$0")")

rm ~/.config/Code\ -\ Insiders/User/keybindings.json
rm ~/.config/Code\ -\ Insiders/User/settings.json

ln -s "$ROOT/keybindings.json" ~/.config/Code\ -\ Insiders/User
ln -s "$ROOT/settings.json" ~/.config/Code\ -\ Insiders/User