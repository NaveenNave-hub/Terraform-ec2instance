 terraform {
    backend "s3" {
        bucket = "naveen-terraform-states"
        key    = "terraform/state/terraform.tfstate"
        use_lockfile = "true"
        region = "eu-north-1"
    }
   
 }
