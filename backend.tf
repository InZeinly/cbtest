terraform {
  backend "s3" {
    bucket = "inzeintestbucket2198312312"
    encrypt = true
    # dynamodb_table = "terraform_state_lock"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
} 

# # test new branch on virtual
# # test new branch
# # test