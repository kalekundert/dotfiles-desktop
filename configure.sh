cd $HOME
for SCRIPT in .shell/configure.d/*.sh; do
    source $SCRIPT
done
cd ~-
