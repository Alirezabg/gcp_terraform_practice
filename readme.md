# Terraform commands
terraform init 
    initialize the provide with plugin

terraform plan 
    preview of resources that will be created after terraform apply

terraform apply
    create real infrastructure resources 

terraform destroy
    destroy infrastructure resources

terraform fmt
    auto format to match canonical conventions

terraform validate
    constraints 
    ---terraform benefit validator
    enforce policies at any stage of application development
    remove manual errors by automating policy validation
    reduce time to learn 
Terraform.state it stored locally and do not modify 


# Editing the machine type without stopping the VM
Machine type of a VM cannot be changed on a running VM. 
The machine-type cannot be changed on a running VM. To ensure the VM stops before updating the machine_type, set allow_stopping_for_update argument to true so that the code looks like this:

resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "n1-standard-1"
  tags         = ["web", "dev"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }
  allow_stopping_for_update = true
}

