provider "google" {
  version = "1.4.0"

  # project = "${var.project}"
  project = "infra-219815"
  region  = "${var.region}"
}

resource "google_compute_instance" "app" {
  name         = "reddit-app"
  machine_type = "g1-small"
  zone         = "europe-west1-b"

  # определение загрузочного диска
  boot_disk {
    initialize_params {
      # image = "${var.disk_image}"
      image = "reddit-base"
    }
  }

  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "default"

    # использовать ephemeral IP для доступа из Интернет
    access_config {}
  }

  metadata {
    # ssh-keys = "appuser:${file("${var.public_key_path}")}"
    # ssh-keys = "appuser:${file("~/.ssh/id_rsa_appuser.pub")}"
    ssh-keys = "appuser:${file("~/.ssh/appuser.pub")}"
  }

  tags = ["reddit-app"]

  connection {
    type        = "ssh"
    user        = "appuser"
    agent       = false
    # private_key = "${file("~/.ssh/id_rsa_appuser")}"
    private_key = "${file("~/.ssh/appuser")}"
  }

  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }

  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}

resource "google_compute_firewall" "firewall_puma" {
  name = "allow-allow-default"

  # Название сети, в которой действует правило
  network = "default"

  # Какой доступ разрешить
  allow {
    protocol = "tcp"
    ports    = ["9292"]
  }

  # Каким адресам разрешаем доступ
  source_ranges = ["0.0.0.0/0"]

  # Правило применимо для инстансов с перечисленными тэгами
  target_tags = ["reddit-app"]
}

resource "google_compute_firewall" "firewall_ssh" {
  name = "allow-puma-ssh"
  # Название сети, в которой действует правило
  network = "default"
  # Какой доступ разрешить
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  # Каким адресам разрешаем доступ
  source_ranges = ["0.0.0.0/0"]
}
