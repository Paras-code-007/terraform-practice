# resource "aws_instance" "foo" {
#   ami           = "ami-03972092c42e8c0ca"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "my-new-instance"
#   }
# }


resource "github_repository" "example" {
  name        = "terraform-github-provider-test"
  description = "My awesome codebase"

  visibility = "public"

  allow_merge_commit = "true"
}

output "repo_visiblity" {
  value = github_repository.example.visibility
}
