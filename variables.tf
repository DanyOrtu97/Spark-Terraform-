variable "region" {
    type = string
    default = "us-east-1"
}

variable "access_key" {
    type = string
    default = "ASIAWZTU4VEJSXZUWCMF"
}

variable "secret_key" {
    type = string
    default = "MQ4v4AbZA8/0Jtl0Gy021Nad3lQs3wcYYV5g0RvH"
}

variable "token" {
    type = string
    default = "FwoGZXIvYXdzEGsaDBBLsYsRKAak4yFiUyLJAXUJj9ZzwllwINxvSZb2kyCy88eqvqTSkIS2Z0sqARJnouDpDkF9UApR50v16qPIDWSrb2lXKX/IKZsul6wVgiyBZOmUbbkkpiBOpHoBpHvIO8qKM4WF1vn92LLqTubmHks4R9754OKq2CES3YCOMjClZr+nH/5hLouJqXHbIh65oYr89s2p5diLe0EUGfSLouyFto0sHB8SaiC7tNt3C/NuFLqOzWH7CzfKAhcmqqKCQVndGPfTnKmXkg5xnzfw47N6JFYg1B/gDCjRzu2BBjItOPXpBFHwGdPFx/PwsP+6REN6NiVO1RUT6UyvOOKLZzTKcuzFJB9ELbY0K3WX"
}

variable "instance_type" {
    type = string
    default = "t2.medium"               # change instance type if needed
}

variable "ami_image" {
    type = string
    default = "ami-0885b1f6bd170450c"   # ubuntu image
}

variable "key_name" {
    type = string
    default = "localkey"                # key name, see readme
}

variable "key_path" {
    type = string
    default = "."                       # change directory to local .ssh directory e.g. ~/.ssh/
}

variable "aws_key_name" {
    type = string
    default = "amzkey"                  # key name, see readme
}

variable "amz_key_path" {
    type = string
    default = "amzkey.pem"
}

variable "namenode_count" {
    type = number
    default = 1                         # count = 1 = 1 aws EC2
}

variable "datanode_count" {
    type = number
    default = 2                         # count = 3 = 3 aws EC2
}

variable "ips" {
    default = {
        "0" = "172.31.0.102"
        "1" = "172.31.0.103"
    }
}

variable "hostnames" {
    default = {
        "0" = "s02"
        "1" = "s03"

    }
}
