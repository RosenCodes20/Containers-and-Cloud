terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "nginx-rosen" {
  name = "nginxdemos/hello"
}

# Create a container
resource "docker_container" "nginx-container-rosen" {
  image = docker_image.nginx-rosen.image_id
  name  = "nginx-container-rosen"

  ports {
    internal = 80
    external = 5001
  }

}