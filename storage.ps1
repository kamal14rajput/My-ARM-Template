Connect-AzAccount -TenantId 
Get-AzSubscription
Select-AzSubscription -Subscription 
New-AzResourceGroup -Name web-template4 -Location "East US"
$template4 = "K:\Kamal\CODE\BL\Custom\ARM Template\azuretemplate.json"
New-AzResourceGroupDeployment -Name deploymentwebvm -ResourceGroupName web-template2 -TemplateFile $template4
