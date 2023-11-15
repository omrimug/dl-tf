resource "helm_release" "nginx" {
  chart      = "nginx"
  name       = "nginx"
  namespace  = var.namespace
  repository = "oci://registry-1.docker.io/bitnamicharts"
  version    = "15.4.2"
}