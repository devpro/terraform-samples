terraform {
  required_providers {
    docker = {
      source = "terraform-providers/docker"
    }
  }
  required_version = ">= 0.13"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = 8080
  }
}

# to be added only for Windows
provider "docker" {
  version = "~> 2.6"
  host    = "npipe:////.//pipe//docker_engine"
}
