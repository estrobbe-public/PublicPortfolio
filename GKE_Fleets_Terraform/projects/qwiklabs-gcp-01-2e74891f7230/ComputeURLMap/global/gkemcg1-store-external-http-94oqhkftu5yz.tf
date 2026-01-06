resource "google_compute_url_map" "gkemcg1_store_external_http_94oqhkftu5yz" {
  default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex"
  description     = "{\"k8sResource\":\"/namespaces/store/gateways/external-http\",\"k8sCluster\":\"/projects/qwiklabs-gcp-01-2e74891f7230/locations/us-west1-b/clusters/cluster1\"}"

  host_rule {
    hosts        = ["*"]
    path_matcher = "hostw0scjxjju82mak92cu944roi79d9n17d"
  }

  name = "gkemcg1-store-external-http-94oqhkftu5yz"

  path_matcher {
    default_service = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-kube-system-gw-serve404-80-7cq0brelgzex"
    name            = "hostw0scjxjju82mak92cu944roi79d9n17d"

    route_rules {
      match_rules {
        prefix_match = "/west/"
      }

      priority = 1
      service  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-west-2-8080-xeyh9ovnpypy"
    }

    route_rules {
      match_rules {
        full_path_match = "/west"
      }

      priority = 2
      service  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-west-2-8080-xeyh9ovnpypy"
    }

    route_rules {
      match_rules {
        prefix_match = "/east/"
      }

      priority = 3
      service  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-east-1-8080-w9o6zdn9hpgy"
    }

    route_rules {
      match_rules {
        full_path_match = "/east"
      }

      priority = 4
      service  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-east-1-8080-w9o6zdn9hpgy"
    }

    route_rules {
      match_rules {
        prefix_match = "/"
      }

      priority = 5
      service  = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-2e74891f7230/global/backendServices/gkemcg1-store-store-8080-ym0pvrdctvcn"
    }
  }

  project = "qwiklabs-gcp-01-2e74891f7230"
}
# terraform import google_compute_url_map.gkemcg1_store_external_http_94oqhkftu5yz projects/qwiklabs-gcp-01-2e74891f7230/global/urlMaps/gkemcg1-store-external-http-94oqhkftu5yz
