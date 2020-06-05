 #ec2 server
  resource "aws_instance" "ec2" {
  count = "${var.ec2_instance_count}"
  ami           = "${var.ami}"
  instance_type = "${var.instance}"

  root_block_device {
    delete_on_termination = "${var.ec2_delete_root_volume_on_termination}"
    volume_size = "${var.ec2_rootvol_size}"
  }
  key_name      = "${var.keyname}"
  vpc_security_group_ids = ["${aws_security_group.ec2_sg.id}"]
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.id}"
   subnet_id = "${var.subnet}"
tags = {
    Name = "${var.product}.${var.environment}-ec2-${count.index+1}"
  }
}

