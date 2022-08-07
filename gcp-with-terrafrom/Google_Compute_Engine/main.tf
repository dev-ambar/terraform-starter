resource "google_compute_instance" "vm-from-tf" {
  name = "vm-from-tf"

  zone = "us-central1-a"

  machine_type = "n1-standard-2"

  allow_stopping_for_update = true

  network_interface {

    network = "auto-vpc-teraform"
    subnetwork = "auto-vpc-teraform"
    
  }
  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220719"
      size = 40
      
    }
    auto_delete = false
  }

  labels = {
    "dep" = "sale"
    "env" = "prod"
  }
  
  service_account {
    email = "terrafrom-gcp@learning-a-terraform.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  
}

resource "google_compute_disk" "disk-1" {
  name = "disk-1"
  size = 15
  type = "pd-ssd"
  zone = "us-central1-a"
  
}

resource "google_compute_attached_disk" "attached-disk" {

  disk = google_compute_disk.disk-1.id

  instance = google_compute_instance.vm-from-tf.id
  
}


output "vm-from-tf-output" {

  value = google_compute_instance.vm-from-tf.id
}