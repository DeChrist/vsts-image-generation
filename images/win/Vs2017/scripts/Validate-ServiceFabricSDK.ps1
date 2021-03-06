################################################################################
##  File:  Validate-ServiceFabricSDK.ps1
##  Team:  Service Fabric
##  Desc:  Validate ServiceFabricSDK
################################################################################

$modules = Get-Module -Name ServiceFabric -ListAvailable

if(($modules | Measure-Object).Count -gt 0)
{
    $modules
    exit 0
}
else {
    Write-Host "ServiceFabric Module is not present, it might not be installed"
    throw "ServiceFabric Module is not present, it might not be installed"
}

