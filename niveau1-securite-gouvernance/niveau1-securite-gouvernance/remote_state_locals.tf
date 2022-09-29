
locals {

###------ Niveau 2
#**#-----Vnet + Subnets
vnet-hub-name                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-hub-name
vnet-hub-id                           = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-hub-id
vnet-hub-address-space                = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-hub-address-space
HUB-subnet-fw-id                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.HUB-subnet-fw-id
HUB-subnet-fw-address_prefixes        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.HUB-subnet-fw-address_prefixes
HUB-subnet-fw-mgmt-id                 = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.HUB-subnet-fw-mgmt-id
HUB-subnet-fw-mgmt-address_prefixes   = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.HUB-subnet-fw-mgmt-address_prefixes
subnet-gateway-id                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.subnet-gateway-id
subnet-Workload-id                    = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.subnet-Workload-id
subnet-Workload-address_prefixes      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.subnet-Workload-address_prefixes

vnet-private-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-private-name
vnet-private-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-private-id
vnet-private-address-space            = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-private-address-space
private-subnet-name                   = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.private-subnet-name
private-subnet-id                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.private-subnet-id
private-subnet-address_prefixes       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.private-subnet-address_prefixes

vnet-public-name                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-public-name
vnet-public-id                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-public-id
vnet-public-address-space             = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-public-address-space
public-subnet-name                    = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.public-subnet-name
public-subnet-id                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.public-subnet-id
public-subnet-address_prefixes        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.public-subnet-address_prefixes

vnet-gestion-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-gestion-name
vnet-gestion-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-gestion-id
vnet-gestion-address-space            = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-gestion-address-space
gestion-subnet-name                   = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.gestion-subnet-name
gestion-subnet-id                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.gestion-subnet-id
gestion-subnet-address_prefixes       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.gestion-subnet-address_prefixes

vnet-identity-name                    = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-identity-name
vnet-identity-id                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-identity-id
vnet-identity-address-space           = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-identity-address-space
identity-subnet-name                  = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.identity-subnet-name
identity-subnet-id                    = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.identity-subnet-id
identity-subnet-address_prefixes      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.identity-subnet-address_prefixes
#Private DNS Zone
az_priv_dns_zone_synapse_id      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.az_priv_dns_zone_synapse_id



#vnet-shsrv-name                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-shsrv-name
#vnet-shsrv-id                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-shsrv-id
#vnet-shsrv-address-space              = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-shsrv-address-space
#shsrv-subnet-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.shsrv-subnet-name
#shsrv-subnet-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.shsrv-subnet-id
#shsrv-subnet-address_prefixes         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.shsrv-subnet-address_prefixes

vnet-audit-name                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-audit-name
vnet-audit-id                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-audit-id
vnet-audit-address-space              = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-audit-address-space
audit-subnet-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.audit-subnet-name
audit-subnet-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.audit-subnet-id
audit-subnet-address_prefixes         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.audit-subnet-address_prefixes

vnet-scomm-name                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-scomm-name
vnet-scomm-id                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-scomm-id
vnet-scomm-address-space              = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-scomm-address-space
scomm-subnet-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.scomm-subnet-name
scomm-subnet-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.scomm-subnet-id
scomm-subnet-address_prefixes         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.scomm-subnet-address_prefixes

#------------------------------ SPOKE ZA Intelligence d'Affaire Synapse Prod
vnet-zaia-name                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-zaia-name
vnet-zaia-id                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-zaia-id
vnet-zaia-address-space              = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.vnet-zaia-address-space
zaia-subnet-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.zaia-subnet-name
zaia-subnet-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.zaia-subnet-id
zaia-subnet-address_prefixes         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.zaia-subnet-address_prefixes                       

#**#-----NSG 
nsg-workload-hub-id                   = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-workload-hub-id
nsg-workload-hub-name                 = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-workload-hub-name

nsg-private-id                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-private-id
nsg-private-name                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-private-name

nsg-public-id                         = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-public-id
nsg-public-name                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-public-name

nsg-identity-id                       = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-identity-id
nsg-identity-name                     = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-identity-name

nsg-gestion-id                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-gestion-id
nsg-gestion-name                      = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-gestion-name

#nsg-shsrv-id                          = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-shsrv-id
#nsg-shsrv-name                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-shsrv-name

nsg-audit-id                          = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-audit-id
nsg-audit-name                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-audit-name

nsg-scomm-id                          = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-scomm-id
nsg-scomm-name                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-scomm-name

#------------------------------ SPOKE ZA Intelligence d'Affaire Synapse Prod
nsg-zaia-id                          = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-zaia-id
nsg-zaia-name                        = data.terraform_remote_state.niveau2-reseautique-phase1.outputs.nsg-zaia-name


#-------------------- Niveau 3 
#**#-----KEYVAULT
#Gestion
keyvault_gestion_id                              = data.terraform_remote_state.niveau3-services.outputs.keyvault_gestion_id 
keyvault_gestion_name                            = data.terraform_remote_state.niveau3-services.outputs.keyvault_gestion_name
keyvault_gestion_vault_uri                       = data.terraform_remote_state.niveau3-services.outputs.keyvault_gestion_vault_uri
keyvault_gestion_private_endpoint                = data.terraform_remote_state.niveau3-services.outputs.keyvault_gestion_private_endpoint
key_vault_gestion_private_endpoint_ip_addresses  = data.terraform_remote_state.niveau3-services.outputs.key_vault_gestion_private_endpoint_ip_addresses

#Identité
keyvault_identity_id                              = data.terraform_remote_state.niveau3-services.outputs.keyvault_identity_id 
keyvault_identity_name                            = data.terraform_remote_state.niveau3-services.outputs.keyvault_identity_name
keyvault_identity_vault_uri                       = data.terraform_remote_state.niveau3-services.outputs.keyvault_identity_vault_uri
keyvault_identity_private_endpoint                = data.terraform_remote_state.niveau3-services.outputs.keyvault_identity_private_endpoint
key_vault_identity_private_endpoint_ip_addresses  = data.terraform_remote_state.niveau3-services.outputs.key_vault_identity_private_endpoint_ip_addresses

#**#-----Compte de stockage 
#Audit
storage_audit_id                                   = data.terraform_remote_state.niveau3-services.outputs.storage_audit_id
storage_audit_name                                 = data.terraform_remote_state.niveau3-services.outputs.storage_audit_name
storage_audit_private_endpoint                     = data.terraform_remote_state.niveau3-services.outputs.storage_audit_private_endpoint
storage_audit_private_endpoint_ip_addresses        = data.terraform_remote_state.niveau3-services.outputs.storage_audit_private_endpoint_ip_addresses

#**#-----LAW
#Audit
law_audit_id                                       = data.terraform_remote_state.niveau3-services.outputs.law_audit_id
law_audit_workspace_id                             = data.terraform_remote_state.niveau3-services.outputs.law_audit_workspace_id
law_audit_name                                     = data.terraform_remote_state.niveau3-services.outputs.law_audit_name
law_audit_primary_shared_key                       = data.terraform_remote_state.niveau3-services.outputs.law_audit_primary_shared_key




}