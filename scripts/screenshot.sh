# grim -g "$(slurp -b '#2E2A1E55' -c '#fb751bff')" -t ppm - | satty -f -
grimblast --freeze --notify save area - |
  satty -f - \
    --copy-command=wl-copy \
    --actions-on-enter=save-to-clipboard \
    --early-exit
