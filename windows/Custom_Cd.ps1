# ------------------------ Function to override the default cd command ------------------------

function global:CustomCD {
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$path
    )

    $SPLITTED_PATHS = @($CDPATH.Split(":"))
    if (Test-Path $path) { 
        Set-Location $path
    }
    
    else {
        $found = $false
        foreach ($p in $SPLITTED_PATHS) {
            $newPath = "$p/$path"

            if (Test-Path $newPath) {
                $found = $true
                Set-Location $newPath
                break
            }
        }
        if (!$found) {
            Write-Host "Path not found"
        }
    }
}

# REMOVE THE DEFAULT ALIAS
if (Get-Alias -Name 'cd' -ErrorAction SilentlyContinue) {
    Remove-Item Alias:cd
}

# CREATE THE NEW ALIAS
Set-Alias -Name cd -Value global:CustomCD
