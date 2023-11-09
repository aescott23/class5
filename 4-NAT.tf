resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-ap-southeast-2a.id

   tags = {
    Name = "app1"
    Service = "application1"
    Owner = "Chewbacca"
    Planet = "Mustafar"
  }

  depends_on = [aws_internet_gateway.app1_igw]
}
