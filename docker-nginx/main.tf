terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
  required_version = ">= 1.0"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_container" "nginx-server" {
  name  = "nginx-server"
  # count = 2
  # name = "nginx-server-${count.index+1}"
  image = docker_image.nginx.latest
  # image = "${docker_image.nginx.latest}"
  ports {
    internal = 80
    external = 8080
  }
  # volumes {
  #   container_path  = "/usr/share/nginx/html"
  #   host_path = "/home/scrapbook/tutorial/www"
  #   read_only = true
  # }
}

# for Windows
provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}
# provider "docker" {
#   host = "tcp://docker:2345/"
# }
# for Linux
# provider "docker" {
#   host = "unix:///var/run/docker.sock"
# }
