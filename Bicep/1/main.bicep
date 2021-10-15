param location string=resourceGroup().location
param storageAccountName string='toylaunch${uniqueString(resourceGroup().id)}'
param appServiceAppName string='toylaunch${uniqueString(resourceGroup().id)}'



@allowed([
  'nonprod'
  'prod'
])
param environmentType string

var storageAccountSkuName = (environmentType == 'prod') ? 'Standard_GRS' : 'Standard_LRS'


resource myTestStorageAcc 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku:{
    name:storageAccountSkuName
  }
  properties:{
    accessTier:'Hot'
  }
}

module appService 'modules/appService.bicep' = {
  name: 'appService'
  params: {
    location: location
    appServiceAppName: appServiceAppName
    environmentType: environmentType
  }
}

output appServiceAppHostName string = appService.outputs.appServiceAppHostName
