resource "aws_db_instance" "postgres" {

  identifier = "hotel-db"

  engine = "postgres"

  engine_version = "15"

  instance_class = "db.t3.micro"

  allocated_storage = 20

  db_name = var.db_name

  username = var.username

  password = var.password

  publicly_accessible = false

  skip_final_snapshot = true

  vpc_security_group_ids = [
    var.security_group_id
  ]
}
