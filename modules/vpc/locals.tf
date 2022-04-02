locals {
  common_tags = {

    Project_Name  = "jumia-assignment"
    owner         = "Gitonga"
    Project_Owner = "Miguel"
    Company       = "Jumia"
    ManagedBy     = "terraform"
    Environment   = "production"

  }
}


locals {

  Creation_date = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}
