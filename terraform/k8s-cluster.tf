resource "digitalocean_kubernetes_cluster" "k8s_cluster" {
  name                             = "k8s"
  region                           = "sfo3"
  version                          = "1.28.2-do.0"
  surge_upgrade                    = false
  destroy_all_associated_resources = false

  node_pool {
    name       = "pool-8gb"
    size       = "s-4vcpu-8gb"
    node_count = 1
  }
}

output "kubeconfig" {
  value     = digitalocean_kubernetes_cluster.k8s_cluster.kube_config
  sensitive = true
}
