#create RDS DB with terraform
resource "aws_db_instance" "myrds" {
   engine              = "mysql"
   engine_version      = "8.0.35"
   allocated_storage   = 20
   storage_type        = "gp2"
   identifier          = "mydb"
   instance_class      = "db.t3.micro"
   username            = "admin"
   password            = "#############"
   publicly_accessible = true
   skip_final_snapshot = true

   tags = {
    
     Name = "MyRDS-Demo"
   }
 }