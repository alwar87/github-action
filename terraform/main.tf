provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "hello-world-cluster"
  location = var.region
  remove_default_node_pool = true
  initial_node_count       = 2
}

resource "google_container_node_pool" "primary_nodes" {
  cluster   = google_container_cluster.gke.name
  location  = var.region
  node_count = 2

  networking_mode = "VPC_NATIVE"
# Enable HTTP Load Balancing
  addons_config {
    http_load_balancing {
      disabled = false
     }
  }
  node_config {
    machine_type = "e2-medium"
    oauth_scopes = {
      "https://www.googleapis.com/auth/cloud-platform"
    }
  }
}
