 provider "aws" {
   region  = "us-east-1"
}




resource "aws_instance" "ELKDeploy" {
    ami = "ami-026b57f3c383c2eec"
    count = "1"
    key_name   = "testlab"
    instance_type = "t3.large"
    security_groups = ["launch-wizard-1"]
    tags = {
        Name = "ELK-Stack-deploy"
    } 
    user_data = file("docker-compose.sh")
   

}
