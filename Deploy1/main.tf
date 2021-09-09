module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  create_vpc = true
  name = "javier-barreda-vpc"
  cidr = "10.0.0.0/16"
  azs             = ["us-west-2a", "us-west-2b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

resource "aws_instance" "javier-barreda-ec2" {
  ami           = "ami-0c2d06d50ce30b442"
  instance_type = "t2.micro"
  subnet_id = "${module.vpc.public_subnets[0]}"
  tags = {
    Name = "ec2-javib94"
  }
}