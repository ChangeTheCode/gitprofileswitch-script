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


$profileList = @( 
@{ 
    profilekind = "private"
    name = ""
    mail = ""
}, 
@{ 
    profilekind = "work" 
    name = "" 
    mail = ""
}
# add your own profiles
);
  


# loop once for all
foreach ($profile in $profileList){
    If ($profile.profilekind -eq $profilekind) {
       $test = $profile.name
        git config --global user.name $profile.name
        git config --global user.email $profile.mail
        Write-Host "Git configuration is set to name: $($profile.name) and mail: $($profile.mail)"
        return
    }
} 
