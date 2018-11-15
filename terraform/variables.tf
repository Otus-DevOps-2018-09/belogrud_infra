#variable project {
#	description = "Project ID"
#	project = "infra-219815"
#}
variable region {
  description = "Region"
  default     = "europe-west1"
}

#variable "public_key_path" {
#	description = "Path to the public key used for ssh access"
#	public_key_path = "~/.ssh/id_rsa_appuser.pub"
#}
#variable "disk_image" {
#	description = "Disk image"
#	disk_image = "reddit-base"
#}

variable app_disk_image {
	description = "Disk image for reddit app"
	default = "reddit-app-base"
}
