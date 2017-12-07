cd $HOME
for SCRIPT in .shell/configure.d/*.sh; do
    source $SCRIPT
done
cd ~-


if [[ $1 == eval ]]
then
    "$@"
    set --
fi
