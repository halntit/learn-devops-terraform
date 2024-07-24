provider "aws" {
    region = "ap-southeast-1"
}

variable "AMIS" {
    type = map(string)
    default = {
        ap-southeast-1 = "myami"
    }
}

variable "AWS_REGION" {
    type = string
}

resource "aws_instance" "myec2" {   
    ami = var.AMIS[var.AWS_REGION]
    instance_type = "t2.micro"
}
