
resource google_storage_bucket "GCS1" {

    name = "storage-bucket-from-terraform_script"
    location ="ASIA-SOUTH2"
    storage_class = "NEARLINE"
    labels = {
      "env" = "gcs_env"
      "dep" = "sale"
    }
    lifecycle_rule {
       action {
         type = "SetStorageClass"
         storage_class = "COLDLINE"
       }
       condition {
         age = 10
       }
    }

    retention_policy {
      is_locked = true
      retention_period = 864000
    }
    
  uniform_bucket_level_access = true
} 

resource "google_storage_bucket_object" "myuploadedpic" {
  name   = "nelsonmandela378967"
  source = "C:/Users/Dr Ruchi Gupta/Pictures/Saved Pictures/photo/nelsonmandela378967.jpg"
  bucket = google_storage_bucket.GCS1.name
}
