# Terraform with Azure Cloud 

#### Please follow the below steps inorder to setup Azure Account.!

#### 1. terraform in your setup works with Azure CLI only, so install Azure CLI first (alternatively you can use CloudShell available on azure portal itself which is terraform in-built embedded)

#### 2. Open Azure CLI 

##### Now Create Azure Contributor Service Principal for terraform Auth.

```
# az login 
```

```
# az account list -o table 
```

```
# az account set -s "<subscription-id>"
```

```
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<subscription_id>"
```




### Export the Azure Auth Variable in your bash RC. 
```
export ARM_CLIENT_SECRET="<<password>>"
export ARM_CLIENT_ID="<<appID>>"
export ARM_SUBSCRIPTION_ID="<<subscriptionID>>"
export ARM_TENANT_ID="<<tenant>>"
```

### Initialize the Bashrc Variables (optional)
```
source /root/.bashrc
```

```
set | grep -i ARM
```
