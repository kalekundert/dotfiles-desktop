for SCRIPT in ~/.zsh/setup/*; do
    test -s $SCRIPT && source $SCRIPT
done
