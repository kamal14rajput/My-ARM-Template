Connect-AzAccount -TenantId adc6fda2-59e1-4cc3-919e-f0dba9e39aa4
Get-AzSubscription
Select-AzSubscription -Subscription 6690c33e-a970-47f7-b89f-a31c3395fc24
New-AzResourceGroup -Name web-template4 -Location "East US"
$template4 = "K:\Kamal\CODE\BL\Custom\ARM Template\azuretemplate.json"
New-AzResourceGroupDeployment -Name deploymentwebvm -ResourceGroupName web-template2 -TemplateFile $template4
(Get-AzLog -CorrelationId e1bdd998-8e92-40b2-bf66-ba59e261ccbd).Properties.Content.Values