<!-- BEGIN_TF_DOCS -->

# Azure VNet with DDoS Enabled

This example demonstrates how to deploy an Azure Virtual Network (vNet) using the `terraform-azure-vnet` module with an existing **DDoS Protection Plan**.

---

## ✅ Requirements

| Name      | Version   |
|-----------|-----------|
| Terraform | >= 1.6.6  |
| Azurerm   | >= 3.90.0 |

---

## 🔌 Providers

No providers are explicitly defined in this example.

---

## 📦 Modules

| Name           | Source                                        | Version |
|----------------|-----------------------------------------------|---------|
| resource_group | terraform-az-modules/resource-group/azure     | 1.0.0   |
| vnet           | ../../                                        | n/a     |

---

## 🏗️ Resources

No additional resources are directly created in this example.

---

## 🔧 Inputs

_No input variables are defined in this example._

---

## 📤 Outputs

| Name                    | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| `ddos_plan_id`          | The ID of the existing DDoS Protection Plan                                 |
| `vnet_address_space`    | The address space of the newly created vNet                                 |
| `vnet_guid`             | The GUID of the virtual network                                             |
| `vnet_id`               | The ID of the newly created vNet                                            |
| `vnet_location`         | The location of the newly created vNet                                      |
| `vnet_name`             | The name of the newly created vNet                                          |
| `vnet_rg_name`          | The name of the resource group where the vNet is created                    |

<!-- END_TF_DOCS -->
