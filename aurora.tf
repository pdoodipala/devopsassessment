resource "aws_db_subnet_group" "aurora" {
  name       = "aurora"
  subnet_ids = ["subnet-025594642ad56051c", "subnet-08409fc4f78b1c3e8"]  # Replace with your subnet IDs
}

resource "aws_db_instance" "aurora" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "aurora"
  engine_version       = "5.7.mysql_aurora.2.08.2"
  instance_class       = "db.r5.large"
  name                 = "aurora"
  username             = "dbuser"
  password             = "strapi-password"
  parameter_group_name = "default.aurora-mysql5.7"
  skip_final_snapshot  = true
  vpc_security_group_ids = ["sg-04be58021a283a7f9"]  # Replace with your security group IDs
  db_subnet_group_name  = aws_db_subnet_group.aurora.name
}

output "aurora_endpoint" {
  value = aws_db_instance.aurora.endpoint
}
