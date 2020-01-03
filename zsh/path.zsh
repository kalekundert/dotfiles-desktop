# Don't allow duplicate entries in $PATH.
typeset -gU PATH path
path+=$RC/bin
path+=$HOME/.local/bin

# Make shortcuts for commonly used directories.
hash -d rc=~/hacking/projects/rc

hash -d ksi=~/research/projects/rescue_ksi_d38e
hash -d sgrna=~/research/projects/201511_sgrna_sensor_local
hash -d dbp=~/research/projects/201904_bind_dna
hash -d minp=~/research/projects/201908_minimize_protein_length

hash -d ucsf=~/research/career/03_ucsf
hash -d hms=~/research/career/04_harvard
hash -d f32=~/research/career/04_harvard/f32_201912

hash -d bio96=~/research/software/projects/bio96
hash -d exmemo=~/research/software/projects/exmemo
hash -d snap=~/research/software/projects/autosnapgene
hash -d 2c=~/hacking/projects/two_cents
hash -d glooey=~/kxgames/libraries/glooey
