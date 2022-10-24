#--------------------- TAGS pour la partie INFRA---------------------------#

#auto version 1 (ado +  + p + toujours + interne)
module "auto_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "ado"
    fonction       = "do"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#infra version 1 (infra + si + p + toujours + interne)
module "infra_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "infra"
    fonction       = "si"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#infra version 2 (infra + si + p + toujours + interne)
module "infra_tags_02" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "infra"
    fonction       = "sc"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie HUB---------------------------#

#hub version 1 (hub + si + p + toujours + interne)
module "hub_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "hub"
    fonction       = "si"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#hub version 2 (hub + si + p + toujours + internet, interne)
module "hub_tags_02" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "hub"
    fonction       = "si"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "internet, interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#hub version 3 (hub + si + p + toujours + interne)
module "hub_tags_03" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "hub"
    fonction       = "fw"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#hub version 4 (hub + si + p + toujours + internet, interne)
module "hub_tags_04" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "hub"
    fonction       = "fw"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "internet, interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#hub version 5 (hub + bi + p + toujours + internet, interne)
module "hub_tags_05" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "hub"
    fonction       = "bi"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "internet, interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie PRIVE ---------------------------#

#privé version 1 (prive + si + p + toujours + interne)
module "private_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "prive"
    fonction       = "si"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie PUBLIC ---------------------------#

#public version 1 (public + si + p + toujours + interne)
module "pub_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "public"
    fonction       = "si"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie Identité ---------------------------#

#identité version 1 (ident + sc + p + toujours + interne)
module "ident_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "ident"
    fonction       = "sc"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie Gestion ---------------------------#

#Gestion version 1 (gest + sc + p + toujours + interne)
module "gest_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "gest"
    fonction       = "sc"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie SCOMM ---------------------------#

#Scomm version 1 (srfic + sc + p + toujours + interne)
module "Scomm_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "srfic"
    fonction       = "sc"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie AUDTI ---------------------------#

#Audit version 1 (audit + sc + p + toujours + interne)
module "Audit_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "audit"
    fonction       = "sc"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

#--------------------- TAGS pour la partie ZAIA ---------------------------#

#Zaia version 1 (syn + ap + p + toujours + interne)
module "Zaia_tags_01" {
  source  = "../../infonuagique-azure/modules/TAGs"
    actif          = "syn"
    fonction       = "ap"
    environnement  = "p"  
    horaire        = "toujours" 
    exposition     = "interne"
    type-os        = "N/A"
    version-os     ="N/A"
}

