resource "aws_security_group" "RDS_MySQL" {
  name        = "apareja"
  description = "For RDS communication"
  vpc_id      = "${var.vpc_id}"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["192.168.6.0/24"]
  }

  tags {
    Name         = "Andres_Pareja_RDS"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}

resource "aws_db_subnet_group" "RDS_SG" {
  name       = "aparejardb"
  subnet_ids = ["${var.subnets}"]
}

resource "aws_db_instance" "Create_DB_Instance" {
  identifier             = "aparejarbd"
  allocated_storage      = 10
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "5.7.23"
  instance_class         = "db.t2.micro"
  name                   = "AParejaRDB"
  username               = "andres"
  password               = "andres1234"
  parameter_group_name   = "default.mysql5.7"
  multi_az               = false
  publicly_accessible    = false
  skip_final_snapshot    = true
  availability_zone      = "us-east-1a"
  db_subnet_group_name   = "${aws_db_subnet_group.RDS_SG.name}"
  vpc_security_group_ids = ["${aws_security_group.RDS_MySQL.id}"]

  depends_on = ["aws_db_subnet_group.RDS_SG"]

  tags {
    Name         = "Andres_Pareja_RDS"
    create_by    = "Andres Pareja"
    project_name = "RampUP_Andres"
    start        = "start"
    stop         = "stop"
  }
}
