variable "access_key" {
    default = {}
}
variable "secret_key" {
    default = {}
}
variable "dockerlogin" {
    default = {}
}
variable "dockerpsw" {
    default = {}
}
variable "aws_key" {
    default = {}
}
provider "aws" {
    region = "us-west-2"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}
resource "tls_private_key" "this" {
    algorithm = "RSA"
}
data "aws_eip" "tags" {
    tags = {
        Name = "Petclinic"
    }
}
resource "local_file" "ip_output" {
  content = <<-DOC
  [deploy_server]
  java_server1 ansible_host=${data.aws_eip.tags.public_ip}
  DOC
  filename = "./hosts.txt"
  provisioner "local-exec" {
  command = "ansible-playbook --private-key '${var.aws_key}' playbook.yml --extra-var \"login=${var.dockerlogin} psw=${var.dockerpsw}\" "
  }
}