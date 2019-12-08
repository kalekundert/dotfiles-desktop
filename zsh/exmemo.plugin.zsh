# Tab completion coming soon...

alias en='exmemo note new'
alias ee='exmemo note edit'
alias eo='exmemo note open'
alias eb='exmemo note build'
alias el='exmemo note ls'
alias ew='exmemo note browse'
alias eww='exmemo note browse -w'
alias eps='exmemo protocol show'
alias epp='exmemo protocol print'
alias epe='exmemo protocol edit'
alias epl='exmemo protocol ls'
alias epr='exmemo protocol archive'
alias edl='exmemo data ls'
alias edy='exmemo data sync'
alias edk='exmemo data link'
alias edg='exmemo data gel'

function ed () {
    d=$(exmemo note directory "$@")
    [ $? = 0 ] && cd $d || echo $d  # Don't try to cd if something goes wrong.
}

