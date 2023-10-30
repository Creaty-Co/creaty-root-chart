resource "digitalocean_kubernetes_node_pool" "stage_node_pool" {
  count = 1

  cluster_id = digitalocean_kubernetes_cluster.k8s_cluster.id
  name       = "pool-2gb"
  size       = "s-1vcpu-2gb"
  node_count = 1
}
