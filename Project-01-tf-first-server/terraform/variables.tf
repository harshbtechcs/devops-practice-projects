variable "aws_region" {
  description = "AWS region jaha resources banenge"
  type        = string
  default     = "ap-south-1" # Mumbai
}

variable "owner" {
  description = "Tag ke liye owner ka naam"
  type        = string
  default     = "harsh"
}

variable "vpc_cidr" {
  description = "VPC ka CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet ka CIDR block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type (free tier eligible)"
  type        = string
  default     = "t3.micro"
}

variable "my_ip_cidr" {
  description = "Tumhara public IP /32 ke saath — sirf isi IP se SSH allow hoga. Example: 49.36.10.20/32"
  type        = string
}

variable "public_key_path" {
  description = "Local SSH public key ka path"
  type        = string
  default     = "~/.ssh/p01-key.pub"
}
