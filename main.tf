# resource "resource_type" "resource_name" {
#     resource specific arguments
# }

resource "google_storage_bucket" "mybucket" {
  name     = "alirezabg-cloud"
  location = "US"
}
resource "google_compute_instance" "my_instance" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
    network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_compute_instance" "terraform" {
  name         = "terraform"
  machine_type = "n1-standard-2"
  #Adding tags to the compute resource
  tags = ["web", "dev"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  # add the network by including the following code segment to the google_compute_instance block.
  network_interface {
    network = "default"
    access_config {
    }
  }
  allow_stopping_for_update = true
}

