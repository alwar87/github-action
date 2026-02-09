CopyRunprovider "google" {
  project = "your-gcp-project-id"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "devops-cluster"
  location = "us-central1"
  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
  }
}

output "kubeconfig" {
  value = google_container_cluster.primary.endpoint
}
