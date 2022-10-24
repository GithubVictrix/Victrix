# Generate the local variable as a map which will encapsulate all the key values for the tags

locals {
  tags = tomap({
    "actif"          = "${var.actif}"
    "fonction"       = "${var.fonction}"
    "environnement"  = "${var.environnement}"
    "horaire"        = "${var.horaire}"
    "exposition"     = "${var.exposition}"
    "type-os"        = "${var.type-os}"
    "version-os"     = "${var.version-os}"
      })
}