variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "asg_min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 3
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "QMA-LB"
}

variable "target_group_name" {
  description = "Name of the Target Group"
  type        = string
  default     = "QMA-TG"
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
  default     = "web-asg"
}

variable "asg_scaling_policies_enabled" {
  description = "Enable scaling policies"
  type        = bool
  default     = true
}

variable "security_group" {
  description = "Le groupe de sécurité à appliquer"
  type        = string
  default     = "default"
}
