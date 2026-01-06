resource "google_compute_instance" "setup_vm" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20251209"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/disks/setup-vm"
  }

  labels = {
    goog-terraform-provisioned = "true"
    managed-by-cnrm            = "true"
  }

  machine_type = "e2-standard-2"

  metadata = {
    startup-script = "#!/bin/bash -x\n\nexport STUDENT=`curl \"http://metadata.google.internal/computeMetadata/v1/instance/attributes/student\" -H \"Metadata-Flavor: Google\"`\n\nexport PROJECT_ID=$(gcloud config get-value project)\nexport ZONE=us-west1-a\nexport REGION=us-west1\n\n# Environment variables\nexport HOSTNAME=$(hostname)\nexport CLUSTER_NAME=\"central\"\nexport CLUSTER_ZONE=$ZONE\nexport GCLOUD_PROJECT=$PROJECT_ID\n\n# Create student home directory for installation of kubectl and istioctl\nexport HOME_DIR=/home/$STUDENT\n\nmkdir $HOME_DIR\nusermod -d $HOME_DIR $STUDENT\n\ncd $HOME_DIR\n\n# Kubernetes related set up\nsudo apt-get install kubectl\n\n# Setup default kube config\nexport KUBECONFIG=$HOME_DIR/.kube/config\necho \"\" > $HOME_DIR/.kube/config\n\n# Create GKE cluster, without Istio at this point\ngcloud beta container clusters create $CLUSTER_NAME  --zone $CLUSTER_ZONE \\\n    --num-nodes 4  --machine-type \"e2-standard-2\" --image-type \"COS_CONTAINERD\" \\\n    --enable-stackdriver-kubernetes \\\n    --scopes \"gke-default\",\"compute-rw\" \\\n    --enable-autoscaling --min-nodes 4 --max-nodes 6\n\n# Set up cluster auth\ngcloud container clusters get-credentials $CLUSTER_NAME  --zone $CLUSTER_ZONE \\\n    --project $GCLOUD_PROJECT\n\nkubectl create clusterrolebinding cluster-admin-binding \\\n    --clusterrole=cluster-admin \\\n    --user=$(gcloud config get-value core/account)"
    student        = "student-01-557f1e7ff2cf"
  }

  name = "setup-vm"

  network_interface {
    access_config {
      nat_ip       = "34.145.116.20"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/global/networks/default"
    network_ip         = "10.138.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-01-b390f77d9358/regions/us-west1/subnetworks/default"
    subnetwork_project = "qwiklabs-gcp-01-b390f77d9358"
  }

  project = "qwiklabs-gcp-01-b390f77d9358"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "788184874362-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/source.full_control"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  zone = "us-west1-a"
}
# terraform import google_compute_instance.setup_vm projects/qwiklabs-gcp-01-b390f77d9358/zones/us-west1-a/instances/setup-vm
