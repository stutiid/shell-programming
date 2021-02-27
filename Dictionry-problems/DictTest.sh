#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sounds" ${sounds[dog]}
echo "Sound dictionary keys" ${!sounds[@]}
echo "All Animals sounds values" ${sounds[@]}
echo "Number of Animals" ${#sounds[@]}
