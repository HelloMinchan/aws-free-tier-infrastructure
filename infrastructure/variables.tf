variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro" # Free Tier eligible
}
variable "ec2_key_pair" {
  description = "ec2 key pair"
  type        = string
  default     = "my-key-pair"
}
variable "ec2_volume_size" {
  description = "ec2 volume size"
  type        = number
  default     = 30 # Free Tier eligible
}
variable "ec2_name" {
  description = "ec2 name"
  type        = string
  default     = "free-tier-ubuntu"
}
