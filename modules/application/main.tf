resource "local_file" "application"{
  filename = "${path.module}/application.txt"
  content =  "Aplication details"
}
