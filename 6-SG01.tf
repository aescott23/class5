#resource "aws_internet_gateway" "app1_igw"

resource "aws_security_group" "app1_sg01_servers" {
 name        = "app1_sg01_servers"
  description = "app1_sg01_servers"
  vpc_id      = aws_vpc.app1.id

  ingress {
    description      = "MyHomePage"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

ingress {
    description      = "EvilBox"
    from_port        = 3389
    to_port          = 3389
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "app1_sg01_servers"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }



}

