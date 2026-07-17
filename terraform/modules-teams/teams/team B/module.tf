provider "aws" {
    region     = "us-east-1"
}

provider "aws" {
    region = "ap-south-1"
    alias = "mumbai"
}

module "sg" {
    source = "../../modules/sg"
    providers = {
        aws.prod = aws.mumbai
    }
}