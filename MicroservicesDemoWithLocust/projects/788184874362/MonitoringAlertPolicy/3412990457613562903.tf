resource "google_monitoring_alert_policy" "3412990457613562903" {
  combiner = "OR"

  conditions {
    condition_threshold {
      aggregations {
        alignment_period   = "300s"
        per_series_aligner = "ALIGN_RATE"
      }

      comparison      = "COMPARISON_GT"
      duration        = "0s"
      filter          = "resource.type = \"k8s_container\" AND metric.type = \"logging.googleapis.com/user/Error_Rate_SLI\""
      threshold_value = 0.5

      trigger {
        count = 1
      }
    }

    display_name = "Kubernetes Container - logging/user/Error_Rate_SLI"
  }

  display_name = "Error Rate SLI"
  enabled      = true
  project      = "788184874362"

  user_labels = {
    managed-by-cnrm = "true"
  }
}
# terraform import google_monitoring_alert_policy.3412990457613562903 788184874362 projects/788184874362/alertPolicies/3412990457613562903
