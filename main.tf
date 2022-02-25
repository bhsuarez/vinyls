// Configure the Google Cloud provider
provider "google" {
 credentials = file("flask-app-342402-2099a9c0dc11.json")
 project     = "test-app-342402"
 region      = "us-west1"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

// A single Compute Engine instance
resource "google_compute_instance" "default" {
 name         = "test-vm-${random_id.instance_id.hex}"
 machine_type = "f1-micro"
 zone         = "us-west1-a"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
 }

// Make sure test is installed on all new instances for later steps
 metadata_startup_script = "sudo apt-get update; sudo apt-get install git; sudo apt-get install -yq build-essential python-pip rsync; pip install test; sudo apt-get install postgresql-client;"

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }

}
resource "google_compute_firewall" "default" {
 name    = "test-app-firewall"
 network = "default"

 allow {
   protocol = "tcp"
   ports    = ["5000"]
 }
 source_ranges = ["0.0.0.0/0"]
}
// A variable for extracting the external IP address of the instance
output "ip" {
 value = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}
output "name" {
  value = "test-vm-${random_id.instance_id.hex}"
}
