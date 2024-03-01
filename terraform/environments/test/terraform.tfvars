 # Azure subscription vars
subscription_id = "64b5de4c-738a-488c-9d2c-0a702a6d086a"
#client_id = "87e9b7b7-c6ea-4052-949d-c5173e1efde8"
#client_id = "9a513571-892f-4e40-94b4-06c8e3ef61fe"
# client_id = "ae725b36-42c2-45c0-9ba0-6048b7e9be83"
# client_id = "18764fa3-e8bc-44ec-865c-0297cfe2d38d"
# client_id = "a3772693-b071-4d86-82a1-636c52594183"
client_id = "1d36b4d2-d387-4d57-9003-6d20dc9b0a31"
# client_secret = "4VK8Q~KrO~3uigRbNaualeVCj~MrCjUtm-67lbF1"
#client_secret = "mgV8Q~0bqPqRhX-BQ~VUgJhMeeB7IJ2~pfyjfbVO"
#client_secret = "MYq8Q~8IQExat_1CZCBRcuOdZqYdMVKR35_GLbju"
# client_secret = "FuW8Q~T645Xxo~WPlfmJmuels4WicUw1.7k3Tbah"
client_secret = "BUY8Q~RhjLfBjR88LFqzH0K76vHCJ7dtFDQmHa9M"
tenant_id = "6b6c018c-f2e6-48d8-b64f-4cd02807e329"

# Resource Group/Location
location = "eastus"
resource_group_name = "Azuredevops"
application_type = "Azuredevops"

# Network
virtual_network_name = "mydevopsagent"
address_space = ["10.0.0.0/16"]
# address_prefixes = ["10.0.1.0/24"]
# address_prefix = ["10.0.1.0/24"]

address_prefix = "10.0.0.0/24"
address_prefixes = ["10.0.0.0/16"]
# resource_group = "Azuredevops"
resource_group = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops"
# subnet_id  = "default"
subnet_id = "/subscriptions/64b5de4c-738a-488c-9d2c-0a702a6d086a/resourceGroups/Azuredevops/providers/Microsoft.Network/virtualNetworks/mydevopsvm-vnet/subnets/default"
