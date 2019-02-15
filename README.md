# Azure with Ruby

## Quick Start

Install dependencies:

```bash
apt-get install ruby ruby2.3-dev
apt-get install zlib1g-dev
gem install 'azure_sdk'
```

Set environment variables:

```bash
export AZURE_TENANT_ID=""
export AZURE_CLIENT_ID=""
export AZURE_CLIENT_SECRET=""
export AZURE_SUBSCRIPTION_ID=""

env | grep AZURE
```

```bash
az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET --tenant $AZURE_TENANT_ID
az account set --subscription $AZURE_SUBSCRIPTION_ID
az vm list -g kubernetes  -o table
```