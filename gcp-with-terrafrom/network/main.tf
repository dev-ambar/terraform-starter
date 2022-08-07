resource "google_compute_network" "auto-vpc-teraform" {
   
   name = "auto-vpc-teraform"
   auto_create_subnetworks = true
  
}

resource "google_compute_network" "custom-vpc-teraform" {

  name = "custom-vpc-teraform"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub-net-sng" {

  name = "sub-net-sng"
  ip_cidr_range = "10.0.0.0/8"
  private_ip_google_access = true
  region = "asia-south1"
  network = google_compute_network.custom-vpc-teraform.id
}

resource "google_compute_firewall" "allow-icmp1" {
  name= "allow-icmp1"
  network = google_compute_network.custom-vpc-teraform.id
  priority = 180
  

  allow {
    protocol = "icmp"
  }

  source_ranges = ["122.161.53.10/32"]

  
}
output "auto" {
  
  value = google_compute_network.auto-vpc-teraform.id
  
}

output "custom" {
  
  value = google_compute_network.custom-vpc-teraform.id
}