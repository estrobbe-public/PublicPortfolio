resource "google_compute_url_map" "gkemcs_qwiklabs_gcp_01_2e74891f7230_default" {
  default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-default-404"

  host_rule {
    hosts        = ["gw-serve404.kube-system.svc.clusterset.local:80"]
    path_matcher = "gkemcs-kube-system-gw-serve404-tcp-80"
  }

  host_rule {
    hosts        = ["store-east-1.store.svc.clusterset.local:8080"]
    path_matcher = "gkemcs-store-store-east-1-tcp-8080"
  }

  host_rule {
    hosts        = ["store-west-2.store.svc.clusterset.local:8080"]
    path_matcher = "gkemcs-store-store-west-2-tcp-8080"
  }

  host_rule {
    hosts        = ["store.store.svc.clusterset.local:8080"]
    path_matcher = "gkemcs-store-store-tcp-8080"
  }

  name = "gkemcs-qwiklabs-gcp-01-2e74891f7230-default"

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-kube-system-gw-serve404-tcp-80"
    name            = "gkemcs-kube-system-gw-serve404-tcp-80"

    route_rules {
      match_rules {
        header_matches {
          exact_match = "kube-system"
          header_name = "namespace"
        }

        header_matches {
          exact_match = "gw-serve404"
          header_name = "name"
        }

        header_matches {
          exact_match = "ClusterSetIP"
          header_name = "type"
        }

        header_matches {
          exact_match = "TCP"
          header_name = "protocol"
        }

        header_matches {
          exact_match = "80"
          header_name = "port"
        }

        header_matches {
          exact_match = "http"
          header_name = "portname"
        }

        prefix_match = "/"
      }

      priority = 1

      route_action {
        weighted_backend_services {
          backend_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-kube-system-gw-serve404-tcp-80"
          weight          = 1
        }
      }
    }
  }

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-east-1-tcp-8080"
    name            = "gkemcs-store-store-east-1-tcp-8080"

    route_rules {
      match_rules {
        header_matches {
          exact_match = "store"
          header_name = "namespace"
        }

        header_matches {
          exact_match = "store-east-1"
          header_name = "name"
        }

        header_matches {
          exact_match = "ClusterSetIP"
          header_name = "type"
        }

        header_matches {
          exact_match = "TCP"
          header_name = "protocol"
        }

        header_matches {
          exact_match = "8080"
          header_name = "port"
        }

        prefix_match = "/"
      }

      priority = 1

      route_action {
        weighted_backend_services {
          backend_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-east-1-tcp-8080"
          weight          = 1
        }
      }
    }
  }

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-tcp-8080"
    name            = "gkemcs-store-store-tcp-8080"

    route_rules {
      match_rules {
        header_matches {
          exact_match = "store"
          header_name = "namespace"
        }

        header_matches {
          exact_match = "store"
          header_name = "name"
        }

        header_matches {
          exact_match = "ClusterSetIP"
          header_name = "type"
        }

        header_matches {
          exact_match = "TCP"
          header_name = "protocol"
        }

        header_matches {
          exact_match = "8080"
          header_name = "port"
        }

        prefix_match = "/"
      }

      priority = 1

      route_action {
        weighted_backend_services {
          backend_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-tcp-8080"
          weight          = 1
        }
      }
    }
  }

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-west-2-tcp-8080"
    name            = "gkemcs-store-store-west-2-tcp-8080"

    route_rules {
      match_rules {
        header_matches {
          exact_match = "store"
          header_name = "namespace"
        }

        header_matches {
          exact_match = "store-west-2"
          header_name = "name"
        }

        header_matches {
          exact_match = "ClusterSetIP"
          header_name = "type"
        }

        header_matches {
          exact_match = "TCP"
          header_name = "protocol"
        }

        header_matches {
          exact_match = "8080"
          header_name = "port"
        }

        prefix_match = "/"
      }

      priority = 1

      route_action {
        weighted_backend_services {
          backend_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcs-store-store-west-2-tcp-8080"
          weight          = 1
        }
      }
    }
  }

  project = "qwiklabs-gcp-01-2e74891f7230"
}
# terraform import google_compute_url_map.gkemcs_qwiklabs_gcp_01_2e74891f7230_default projects/qwiklabs-gcp-01-2e74891f7230/global/urlMaps/gkemcs-qwiklabs-gcp-01-2e74891f7230-default
