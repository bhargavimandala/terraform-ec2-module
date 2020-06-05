 output "ec2_sg" {
  value = "${aws_security_group.ec2_sg.id}"
}

output "ec2_instance" {
  value = "${aws_instance.ec2.id}"
} 

output "ec2_public_ip" {
  value = "${aws_instance.ec2.public_ip}"
}

output "ec2_role" {
  value = "${aws_iam_role.ec2_role.id}"
}
