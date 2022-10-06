/*
 * SPDX-License-Identifier: Apache-2.0
 * Licensed to the Ed-Fi Alliance under one or more agreements.
 * The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
 * See the LICENSE and NOTICES files in the project root for more information.
 */

variable "base_rg_name" {
  type = string
  description = "Name of the existing resource group to deploy into."
}
variable "base_subnet" {
  type = string
  description = "Name of the existing tools subnet to deploy into."
  default = "default"
}
variable "base_vnet" {
  type = string
  description = "Name of the existing tools vnet to deploy into."
}

variable "prefix" {
  type = string
  description = "Naming prefix for tools resources."
}
variable "admin_username" {
  description = "VM administrator username"
  type        = string
  sensitive   = true
}

variable "admin_password" {
  description = "VM administrator password"
  type        = string
  sensitive   = true
}

variable "location" {
  type = string
  default = "centralus"
}

variable "web_vm_size" {
  type = string
  default = "Standard_D2s_v3"
}
variable "sql_vm_size" {
  type = string
  default = "DS11_v2"
}

variable "web_vm_os_disk_size" {
  type = number
  default = 16
}
variable "sql_vm_os_disk_size" {
  type = number
  default = 28
}

variable "web_vm_image_publisher" {
  default = "MicrosoftWindowsServer"
  type = string
}
variable "web_vm_image_offer" {
  default = "WindowsServer"
  type = string
}

variable "web_vm_image_sku" {
  default = "2022-datacenter-azure-edition"
  type = string
}

variable "sql_vm_image_publisher" {
  default = "microsoftsqlserver"
  type = string
}
variable "sql_vm_image_offer" {
  default = "sql2022-ws2022"
  type = string
}

variable "sql_vm_image_sku" {
  default = "sqldev-gen2"
  type = string
}
