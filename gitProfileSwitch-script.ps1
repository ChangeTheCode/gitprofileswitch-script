# Run all 
<#
.SYNOPSIS
    set or switch your git profile

.PARAMETER profilekind
    variant which you added to the array of object. like 'work' and private
    
#>
param(
    [Parameter(Mandatory=$true)]
    [string] $profilekind
)

$config = (Get-Content 'config.json' | Out-String | ConvertFrom-Json)

foreach ($profile in $config.profiles){
    If ($profile.profilekind -eq $profilekind) {
        git config --global user.name $profile.name
        git config --global user.email $profile.mail
        Write-Host "Git configuration is set to name: $($profile.name) and mail: $($profile.mail)"
        Start-Sleep -Seconds 2
        return
    }
} 

Write-Error "Git account could not be found $profilekind"
Start-Sleep -Seconds 5