variable "vpn_ip" {
    default = "101.20.30.50/32"
    description = "This is the VPN IP address that will be used to access the application and SSH into the EC2 instance."
}

variable "ssh_port" {
    default = 22
    description = "This is the SSH port that will be used to access the EC2 instance."
}

variable "app_port" {
    default = 80
    description = "This is the application port that will be used to access the application."
}