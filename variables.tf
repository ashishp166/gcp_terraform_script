variable "project_name" {
    description = "Value of the Project tag"
    type = string
    default = "spring2024"
}

variable "instance_name" {
    description = "Value of the Name tag for the GCP instance"
    type = string
    default = "personal playground"
}

variable "machine_type" {
    description = "Value for the Machine type tag for the GCP instance"
    type = string
    default = "n1-standard-4"
}

variable "instance_zone" {
  description = "Value of the Zone tag for the GCP instance"
  type = string
  default = "us-central1-a"
}

variable  "gcp_boot_disk_image" {
    description = "Boot disk image for this GCP instance"
    type = string
    default = "common-gpu-v20240128-debian-11-py310"
}

variable "gcp_boot_disk_image_size" {
    description = "Size of the boot disk image(in Gb)"
    type = number
    default = 300
}

variable "gcp_boot_disk_image_type" {
    description = "Boot disk image type(pd-standard, pd-ssd, pd-balanced)"
    type = string
    default = "pd-standard"
}

variable "gpu_type" {
    description = "Name for GPU(optional)"
    type = string
    default = "nvidia-tesla-p4"
}

variable "num_gpus" {
    description = "Value of the number of gpus"
    type = number
    default = 1
}
