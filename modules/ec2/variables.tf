variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro" # Free Tier eligible
}
variable "key_pair" {
  description = "key pair"
  type        = string
  default     = "my-key-pair"
}
variable "volume_size" {
  description = "volume size"
  type        = number
  default     = 30 # Free Tier eligible
}
variable "name" {
  description = "name"
  type        = string
  default     = "free-tier-ubuntu"
}
