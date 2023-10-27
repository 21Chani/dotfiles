
function global:ga {
    git add .
}


function global:ghp {
    git push $args
}

function global:gs {
    git status
}

function global:gc {
    git commit -m $args
}

function global:gl {
    git log
}

function global:gb {
    git branch
}

function global:gd {
    git diff
}

function global:gr {
    git reset $args
}

function global:grs {
    git reset --soft HEAD~$args
}

 
