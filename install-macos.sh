#!/bin/sh

realpath() { [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"; }
ROOT=$(dirname "$(realpath "$0")")

ln -s "$ROOT/keybindings.json" ~/Library/Application\ Support/Code\ -\ Insiders/User
ln -s "$ROOT/settings.json" ~/Library/Application\ Support/Code\ -\ Insiders/User