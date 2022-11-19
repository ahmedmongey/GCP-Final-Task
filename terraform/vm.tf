# Create a single Compute Engine instance
resource "google_compute_instance" "my-vm" {
  name         = "my-vm"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  tags         = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    subnetwork = google_compute_subnetwork.management-subnet.id

   
  }
}