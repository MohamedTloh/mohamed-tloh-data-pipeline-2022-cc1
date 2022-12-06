resource "aws_instance" "ec2_vm" {
  ami           = "ami-02aeff1a953c5c2ff"
  instance_type = "t3.micro"
  key_name      = "mohamed-tloh-key"
  tags = {
    Name  = "ExempleInstanceEC2Linux"
    Owner = "PhCurmin"
    Etudiant = "mohamed.tloh@etu.u-pec.fr"
  }

  vpc_security_group_ids = ["${aws_security_group.default.id}"]
}

# Default ec2 user is "ec2-user"

