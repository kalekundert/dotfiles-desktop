# rosetta {{{1
export ROSETTA=~/rosetta/master
export ROSETTA_BUILD=linuxclangrelease
export PYROSETTA_CONDA_CHANNEL='https://pose:foldtree@conda.graylab.jhu.edu'

# PDB {{{1
export PDB_MMCIF="$HOME/research/databases/pdb/mmcif"
export PDB_VALIDATION="$HOME/research/databases/pdb/validation_reports"
export PDB_COMP="$HOME/research/databases/pdb/components.cif.gz"
export PDB_REDO="$HOME/research/databases/pdb_redo"

# TERMs {{{1
export TERM_DIR="$HOME/research/databases/terms"

# Atom3D {{{1
export ATOM3D_LBA_DATA_DIR="$HOME/research/databases/atom3d_lba/data"
export ATOM3D_SMP_DATA_DIR="$HOME/research/databases/atom3d_smp/data"
export ATOM3D_MSP_DATA_DIR="$HOME/research/databases/atom3d_msp/split-by-sequence-identity-30/data"

# ESCNN {{{1
export ESCNN_MAX_TESTING_ELEMENTS=1

# MNIST {{{1
export MNIST_DIR="$HOME/research/databases"

# CIFAR {{{1
export CIFAR10_DIR="$HOME/research/databases/cifar10"
export CIFAR100_DIR="$HOME/research/databases/cifar100"

# singularity {{{1
# When I convert large docker images to the singularity format, I often run out 
# of space in /tmp.  This command tells singularity to put its temporary files 
# in my home directory instead, since I have a lot more space there.
export SINGULARITY_TMPDIR=/home/kale/sandbox

# vim: fdm=marker

