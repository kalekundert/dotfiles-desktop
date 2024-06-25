# rosetta {{{1
export ROSETTA=~/rosetta/master
export ROSETTA_BUILD=linuxclangrelease


# biology {{{1
export PDB_MMCIF="$HOME/research/databases/pdb/mmcif"
export PDB_VALIDATION="$HOME/research/databases/pdb/validation_reports"
export PDB_COMP="$HOME/research/databases/pdb/components.cif.gz"
export PDB_REDO="$HOME/research/databases/pdb_redo"

export TERM_DIR="$HOME/research/databases/terms"

export ATOM3D_LBA_DATA_DIR="$HOME/research/databases/atom3d_lba/data"
export ATOM3D_SMP_DATA_DIR="$HOME/research/databases/atom3d_smp/data"

export PYROSETTA_CONDA_CHANNEL='https://pose:foldtree@conda.graylab.jhu.edu'

export ESCNN_MAX_TESTING_ELEMENTS=1

# singularity {{{1
# When I convert large docker images to the singularity format, I often run out 
# of space in /tmp.  This command tells singularity to put its temporary files 
# in my home directory instead, since I have a lot more space there.
export SINGULARITY_TMPDIR=/home/kale/sandbox

# vim: fdm=marker

