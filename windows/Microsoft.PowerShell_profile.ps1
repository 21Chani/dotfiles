
# ---------------------------- WORKSPACE ----------------------------

$TWEAKS = "C:\Tweaks"
$POSH_THEMES = "$TWEAKS\PoshThemes\"

$PROJECTS = "~\Projects"
$REPOS = "$PROJECTS/Repos"
$GHREPOS = "$REPOS/github.com"
$GHUSER = "$GHREPOS/21Chani"

# ---------------------------- OH MY POSH ----------------------------

oh-my-posh init pwsh --config "$POSH_THEMES/dracula.omp.json" | Invoke-Expression
