terraform {
  required_providers {
    docker = {
      source = "Kreuzwerker/docker"
      version = "~> 3.0"
     }
   }
 }

provider "docker" {}

resource "docker_image" "nginx" {
  name = "it7027c-web"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
 }

