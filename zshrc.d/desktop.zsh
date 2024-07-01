# Tab completion {{{1
export fpath=(~/.dotfiles-desktop/zcompdef.d $fpath)

# Config files {{{1

alias edrc-desktop='$EDITOR ~/.dotfiles-desktop/zshrc.d/desktop.zsh'
alias edrc-research='$EDITOR ~/.dotfiles-desktop/zshrc.d/research.zsh'
alias edav='$EDITOR ~/.config/avendesora/accounts.gpg && chmod 600 ~/.config/avendesora/accounts.gpg'
alias edsw='$EDITOR ~/.config/stepwise/conf.toml'

# Home directories {{{1
hash -d nb=~/research/projects/201904_bind_dna/notebook/inpaint_protein_atom_clouds/predict_relative_orientation
hash -d ksi=~/research/projects/rescue_ksi_d38e
hash -d sgrna=~/research/projects/201511_sgrna_sensor_local
hash -d dbp=~/research/projects/201904_bind_dna
hash -d bisect=~/research/projects/202008_library_bisection
hash -d aars=~/research/projects/202111_aars_design
hash -d mmip=~/research/projects/202305_macromol_inpaint

hash -d ucsf=~/research/career/03_ucsf
hash -d hms=~/research/career/04_harvard
hash -d f32=~/research/career/04_harvard/f32_201912

hash -d rc=~/hacking/projects/rc
hash -d 2c=~/hacking/projects/two_cents
hash -d autoprop=~/hacking/projects/autoprop
hash -d byoc=~/hacking/projects/byoc
hash -d byocf=~/hacking/projects/byoc_func
hash -d tidyexc=~/hacking/projects/tidyexc
hash -d pff=~/hacking/projects/parametrize_from_file
hash -d repr=~/hacking/projects/reprfunc
hash -d toc=~/hacking/projects/sphinx_autoclasstoc
hash -d sigdis=~/hacking/projects/signature_dispatch
hash -d cookie=~/hacking/projects/cookiecutter_python
hash -d wm=~/hacking/projects/kbkwm

hash -d ap=~/research/software/projects/atompaint
hash -d amen=~/research/software/projects/atom3d_menagerie
hash -d mmc=~/research/software/projects/macromol_census
hash -d mmdf=~/research/software/projects/macromol_dataframe
hash -d mmvox=~/research/software/projects/macromol_voxelize
hash -d mmg=~/research/software/projects/macromol_gym
hash -d mmgd=~/research/software/projects/macromol_gym/make_db
hash -d mmgp=~/research/software/projects/macromol_gym/pretrain
hash -d ty=~/hacking/projects/torchyield
hash -d hot=~/research/software/projects/hms_o2_trainer
hash -d wellmap=~/research/software/projects/wellmap
hash -d qpcr=~/research/software/projects/wellmap_qpcr
hash -d sw=~/research/software/projects/stepwise
hash -d swfmt=~/research/software/projects/stepwise_format
hash -d swc=~/research/software/projects/stepwise_client
hash -d swmb=~/research/software/projects/stepwise_mol_bio
hash -d exmemo=~/research/software/projects/exmemo
hash -d po4=~/research/software/projects/po4
hash -d freeze=~/research/software/projects/freezerbox
hash -d biopol=~/research/software/projects/biopolymers
hash -d sbp=~/research/software/projects/synbioparts
hash -d snap=~/research/software/projects/autosnapgene
hash -d cfu=~/research/software/projects/cfu_count
hash -d relaxb=~/research/software/projects/rosetta_relax_b
hash -d pba=~/research/software/projects/pba_waeber2013
hash -d rosetta=~/research/software/rosetta/master
hash -d escnn=~/research/software/forks/escnn
hash -d protocols=~/research/protocols

hash -d kxgames=~/kxgames
hash -d kxg=~/kxgames/libraries/kxg
hash -d vecrec=~/kxgames/libraries/vecrec
hash -d glooey=~/kxgames/libraries/glooey
hash -d cherts=~/kxgames/minigames/cherts
hash -d seacow=~/kxgames/projects/seacow/spreadsheet_prototype

# Applications {{{1

function xls() {
  if [ $# -eq 0 ]; then
    fork libreoffice --calc
  elif [ -e "$1" ]; then
    # This Stack Overflow questions describes how to read a document from 
    # stdin, e.g.:
    #   
    #   libreoffice --calc =(2c show_payments -1)
    #
    # Unfortunately, it doesn't work with this alias because (I think) the file 
    # is closed after the `[ -e "$1" ]` check.  I'll have to think about 
    # whether there's a reasonable way to deal with this...
    fork libreoffice --calc $1
  else
    touch "Sheet 1.tsv"
    libreoffice --headless --convert-to xlsx "Sheet 1.tsv"
    rm -f "Sheet 1.tsv"
    mv    "Sheet 1.xlsx" $1
    fork libreoffice --calc $1
  fi
}
alias xlsx=xls

alias term='fork alacritty'
alias doc='fork libreoffice'
alias img='fork gpicview'
alias ruler='fork screenruler'
alias chemdraw='fork /opt/chemaxon/marvinsuite/MarvinSketch'
alias monitor='fork arandr'

alias av=avendesora
alias arandr='fork arandr'
alias abiword='fork abiword'
alias chrome='fork google-chrome-stable'
alias civ='steam steam://rungameid/8930'
alias ron='steam steam://rungameid/287450'
alias rontap=ron
alias dia='fork dia'
alias electrum-gui='fork electrum'
alias eom='fork eom'
alias exfalso='fork exfalso'
alias firefox='fork firefox'
alias qute='fork qutebrowser'
alias fonts='fork gnome-specimen'
alias gimp='fork gimp'
alias gnumeric='fork gnumeric'
alias gparted='sudo gparted'
alias gtkpod='fork gtkpod'
alias handbrake='fork ghb'
alias latex-help='za /usr/share/texlive/texmf-dist/doc/latex/base/source2e.pdf'
alias lo='fork libreoffice'
alias lyx='fork lyx'
alias masterpdf='fork masterpdfeditor4'
alias mendeley='fork /home/kale/research/software/projects/mendeley/bin/mendeleydesktop'
alias mysql-workbench='fork mysql-workbench'
alias pithos='fork pithos'
alias plasmids='fork gnumeric ~/research/inventory/plasmids.xml'
alias pymol='fork pymol -qx'
alias pymol1='fork pymol -qx -d "set assembly, 1"'

function pymol-assm() {
  fork pymol -qx -d "set assembly, $2" $1
}

alias pymol-tk='fork pymol -q'
alias pyspread='fork pyspread'
alias qiv='fork qiv'
alias quodlibet='fork quodlibet'
alias rhythmbox='fork rhythmbox'
alias scribus='fork scribus'
alias skype='fork skype'
alias snap='snapgene'
alias sqliteman='fork sqliteman'
alias tad='fork tad'
alias thunderbird='fork thunderbird'
alias vlc='fork vlc'
alias zeal='fork zeal'
alias zoom='fork zoom'

function pymol-pdb () {
  fork pymol -qx $(pdbcif $@)
}

function imagej () {
    # These Java options don't seem to really do anything, so they're here more 
    # aspirationally than anything.
    export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
    fork /home/kale/research/software/third_party/fiji/ImageJ-linux64 $(realpath $1)
}
function snapgene () {
    if [ $# -ge 1 ]; then
      fork snapgene $( realpath -m "$@")
    else
      fork snapgene
    fi
}
function snapgene-viewer () {
    if [ $# -ge 1 ]; then
      fork snapgene-viewer $( realpath -m "$@")
    else
      fork snapgene-viewer
    fi
}

# The zsh completion system doesn't seem to work very well on aliases.  Since I 
# have a custom completion script for evince, I had to write the 'fork' alias 
# as a shell function instead.  (I would have written it as a one-liner, but 
# that confuses bash.)

function pdf () {
    fork sioyek $@
}

function za () {
    fork zathura $@
}

function zathura () {
    fork zathura $@
}

function sioyek () {
    fork zathura $@
}

function evince () {
    fork evince $@
}

function inkscape () {(
    # Inkscape expects python to be python2, so remove my python3 from the PATH
    #export PATH=/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/sbin
    fork inkscape $@
)}
alias ink=inkscape

function libcirc () {(
    cd ~/kxgames/third_party/liberation-circuit-1.0/bin
    ./libcirc
)}

# If nautilus is not given an argument, run it on the current working directory 
# instead of the home directory.

function nautilus () {
    if [ $# -eq 0 ]; then
        fork nautilus .
    else
        fork nautilus
    fi
}
# }}}1
# openbox {{{1
alias logout='openbox --exit'

# qutebrowser {{{1
export BROWSER=qutebrowser

# zathura {{{1
export PDF=zathura

# gvim {{{1
export NVIM_GTK_NO_HEADERBAR=1

alias v=gvim

# gnome-keyring {{{1
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

# latex {{{1
export TEXMFHOME="$HOME/.config/texlive"

# flask {{{1
export FLASK_ENV=development

# polars {{{1
export POLARS_FMT_MAX_ROWS=50

# java GUI {{{1
# These don't seem to do anything, and they clutter nextflow output.
#export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# go {{{1
export GOPATH=~/.local

# sudo {{{1
alias yum='sudo dnf'
alias pacman='sudo pacman'
alias apt-get='sudo apt-get'
alias apt-cache='sudo apt-get'
alias virt-manager='sudo virt-manager'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias updatedb='sudo updatedb'
alias powertop='sudo powertop'
alias zzz='sudo pm-suspend'

# For compiling C extensions
alias pipno='pip install --no-deps --no-build-isolation --no-cache-dir'

function django () {
  $(git root)/manage.py "$@"
}

# two cents {{{1
alias 2c='two_cents'

# ultralist {{{1
alias todo='ultralist'
alias tl='ultralist l by p'
alias tll='ultralist l agenda'
alias tln='ultralist ln'
alias ta='ultralist a'
alias te='ultralist e'
alias ten='ultralist en'
alias td='ultralist d'
alias tdn='ultralist dn'
alias tx='ultralist ex'
alias tc='ultralist c'
alias tuc='ultralist uc'
alias tp='ultralist p'
alias tup='ultralist up'
alias tr='ultralist ar'
alias trc='ultralist ar completed'
alias tgc='ultralist ar garbage-collect'

function tat() {
  ultralist add "$@" due today
}

# exmemo {{{1
alias es='exmemo note status'
alias eu='exmemo note update'
alias en='exmemo note new'
alias ee='exmemo note edit'
alias eo='exmemo note open'
alias eb='exmemo note build'
alias el='exmemo note ls'
alias ew='exmemo note browse'
alias eww='exmemo note browse -w'
alias edl='exmemo data ls'
alias edy='exmemo data sync'
alias edk='exmemo data link'
alias edg='exmemo data gel'

function ed () {
    d=$(exmemo note directory "$@")
    [ $? = 0 ] && cd $d || echo $d  # Don't try to cd if something goes wrong.
}

# stepwise {{{1
alias sw=stepwise

# freezerbox {{{1
alias fq='freezerbox query'

# rosetta {{{1
alias rk='rdt_stub'
alias rb='rdt_build debug'
alias rr='rdt_build release'
alias ru='rdt_unit_test'
alias rd='rdt_doxygen'

alias beautify_changed_files_in_branch="python2 ~/rosetta/tools/python_cc_reader/beautify_changed_files_in_branch.py"
alias beautify_specific_files="python2 ~/rosetta/tools/python_cc_reader/beautify_specific_files.py"



