variable "environment" {
  default     = "cloud-b"
  description = "Environment Name"
}

variable "api_cert" {
  type    = string
  default = ""
}

variable "api_key" {
  type    = string
  default = ""
}
variable "api_ca_cert" {
  default = ""
}

variable "api_url" {
  type    = string
  default = ""
}

variable "api_p12_file" {
  default = ""
}

variable "azure_public_subnets_cidr" {
  type        = list(string)
  default     = ["10.0.10.0/24"]
  description = "CIDR block for Public Subnet"
}

variable "azure_private_subnets_cidr" {
  type        = list(string)
  default     = ["10.0.20.0/24"]
  description = "CIDR block for Private Subnet"
}

variable "azure_rg_location" {
  type    = string
  default = "centralus"
}

variable "azure_subscription_id" {
  type    = string
  default = ""
}

variable "azure_subscription_tenant_id" {
  type    = string
  default = ""
}

variable "azure_service_principal_appid" {
  type    = string
  default = ""
}

variable "azure_service_principal_password" {
  type    = string
  default = ""
}

variable "azure_vm_machine_type" {
  type    = string
  default = "Standard_DS1_v2"
}

variable "azure_xc_machine_type" {
  type    = string
  default = "Standard_DS3_v2"
}

variable "demo_vm_ip" {
  type        = string
  default     = "10.0.20.100"
  description = "Ip Address for demo-vm"
}

variable "resourceOwner" {
  type = string
  default = ""
  description = "This is a tag used for object creation. Example is last name."
}