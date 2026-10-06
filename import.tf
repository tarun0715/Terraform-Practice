resource "local_file" "imported" {
  filename = "${path.module}/import.txt"
  content  = "imported file"
}
