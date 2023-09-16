# ------------------------ Function to override the default cd command ------------------------

# REMOVE THE DEFAULT ALIAS
# if (Get-Alias -Name 'cd' -ErrorAction SilentlyContinue) {
#     Remove-Item Alias:cd 
# }
 
function global:cdd {
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

function Complete-Cd {
    param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameter)

    # Accumulate all directories inside the paths listed in $CDPATH
    $completionResults = @()
    $CDPATH.Split(":") | ForEach-Object {
        if (Test-Path $_) {
            $directories = Get-ChildItem -Path $_ -Directory | ForEach-Object { $_.Name }
            $completionResults += $directories
        }
    }

    # Provide the directories as tab completion results
    $completionResults | Where-Object { $_ -like "$wordToComplete*" } | ForEach-Object {
        [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
    }
}
 
Register-ArgumentCompleter -CommandName "cdd" -ParameterName "path" -ScriptBlock ${function:Complete-CD}
