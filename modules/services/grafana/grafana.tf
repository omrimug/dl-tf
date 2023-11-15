
resource "random_password" "grafana" {
  length = 24
}

resource "helm_release" "grafana" {
  chart      = "grafana"
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  namespace  = var.namespace
  version    = "6.30.1"

  values = [
    templatefile("${path.module}/templates/grafana-values.yaml", {
      admin_user_key        = "usr"
      admin_password_key    = random_password.grafana.result
      prometheus_svc        = var.prometheus_svc
      replicas              = 1
    })
  ]
}
