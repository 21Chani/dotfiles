
# ---------------------------- WORKSPACE ----------------------------

$TWEAKS = "C:\Tweaks"
$POSH_THEMES = "$TWEAKS\PoshThemes\"

$PROJECTS = "~\Projects"

$REPOS = "$PROJECTS/Repos"
$GHREPOS = "$REPOS/github.com"
$GHUSER = "$GHREPOS/21Chani"
$DOTFILES = "$GHUSER/dotfiles" 

$SERVERS = "$PROJECTS/Servers"
$MSERVERS = "$SERVERS/Minecraft"

# ---------------------------- OH MY POSH ----------------------------

oh-my-posh init pwsh --config "$POSH_THEMES/dracula.omp.json" | Invoke-Expression

# ---------------------------- CD PATH ----------------------------

$CURRENT_PATH = (Get-Location).Path
$CDPATH = "${MSERVERS}:${GHREPOS}:${GHUSER}:${PROJECTS}:${TWEAKS}:$CURRENT_PATH"

# ------------------------ Function to override the default cd command ------------------------

Import-Module "$DOTFILES/windows/Custom_Cd.ps1" 