module "ec2" {
    source = "../../modules/ec2"
    instance_type = "t3.micro"
}

resource "aws_eip" "my_eip" {
    instance = module.ec2.ec2_id
    domain   = "vpc"
    
}