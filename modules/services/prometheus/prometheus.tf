
resource "helm_release" "prometheus" {
  chart      = "prometheus"
  name       = "prometheus"
  namespace  = var.namespace
  repository = "https://prometheus-community.github.io/helm-charts"
  version    = "15.5.3"

  set {
    name  = "podSecurityPolicy.enabled"
    value = false
  }

  set {
    name  = "server.persistentVolume.enabled"
    value = false
  }

  set {
    name = "server\\.resources"
    value = yamlencode({
      limits = {
        cpu    = var.limits_cpu
        memory = var.limits_memory
      }
      requests = {
        cpu    = var.requests_cpu
        memory = var.requests_memory
      }
    })
  }
}

output "prometheus_svc"{
    value = "${helm_release.prometheus.name}-server"
}
