resource "null_resource" "file" {
  provisioner "local-exec" {
    command = "echo 'Message: ${upper("helloworld")} from local machine' > challenge.txt"
  }
}
