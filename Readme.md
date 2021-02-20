# Automatic Deployment of a Hadoop-Spark Cluster using Terraform
---
---

## Software versions
---
Ubuntu 20.04
Spark 3.0.1
Hadoop 2.7.7
Python 3.8
Java openjdk 8u275 jdk


## Configure Terraform
---

##### Download and install Terraform
```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```
```
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```
```
sudo apt install terraform
```

##### Download the project and unzip it
Download the repo:
```
https://github.com/DanyOrtu97/Spark-Terraform-.git
```
and unzip it

##### Open the folder "spark-terraform"

##### Create a file "terraform.tfvars" and copy this:

```
access_key="<YOUR AWS ACCESS KEY>"
secret_key="<YOUR AWS SECRET KEY>"
token="<YOUR AWS TOKEN>"
```

Yuo can find the AWS ACCES KEY and AWS TOKEN on your AWS panel account on "Account Details". You can find it on variable.tf. Terraform will create 1 namenode and 8 datanode, each with an istance of type m3.medium

##### Put your project into the "app" folder
You need to create an "app" folder into the terraform project folder to put your project inside.

##### Open a new terminal and type this command in order to generate a new ssh-key:
```
ssh-keygen -f <PATH_TO_SPARK_TERRAFORM>/spark-terraform/localkey
```

where the path <PATH_TO_SPARK_TERRAFORM> is the path to the folder spark-terraform (can be different from one to another)

##### Login to your AWS account and create a new key pairs with name "amzkey" and in ".pem" format.
Yu can follow the guide on https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#having-ec2-create-your-key-pair if you have problems with key generation.

##### Download your "amzkey.pem" key and put it into the spark-tarraform folder

##### Open a terminal on the spark-terraform folder and type these commands:

```
terraform init
```

```
terraform apply
```

You have to type yes one time


Now you can return on Git repo for distributed_tensorflow_on_spark at this link: https://github.com/atzoriandrea/spark_tensorflow.git to continue following the guide


- [Terraform](https://www.terraform.io/intro/index.html)
- [AWS](https://www.terraform.io/docs/providers/aws/index.html)
