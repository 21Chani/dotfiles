
function touch {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$file
    )

    if (Test-Path $file) {
        Out-Host "File already exists"
    }
    else {
        New-Item $file -ItemType File
    }
}