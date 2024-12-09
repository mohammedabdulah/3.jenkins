resource "aws_instance" "sample" {
    ami= data.aws_ami.centos8.id
    count = 2
    instance_type= var.instance_name[count.index] == "mongodb" || var.instance_name[count.index] == "payment" || var.instance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"
    tags = {
        Name = var.instance_name[count.index]
    }
}

