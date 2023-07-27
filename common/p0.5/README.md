# p0.5

> This stage isn't required for project or even for the defense. This is just a small step before approaching the project.

# Notes

With the install-k3s.sh script, you can install k3s.

## Create

Here you can deploy the first-deployment.yaml and the first-service.yaml with the `sudo k3s kubectl create -f [file]`.

## Read

With the `sudo k3s kubctl get`, you can inspects various types of ressources of your cluster. You can use `services` or `pods` for instance.

## Update

With the `sudo k3s kubectl apply -f [file]` you can apply the configuration on an existing ressource. For your information, if the ressource you want to edit does not exists, k3s will create it like the `create` command would do.

## Delete

Finally, with the `sudo k3s kubectl delete -f [file]` command, you can delete ressources from a file.

# Roadmap

- [x] Install K3S with the install-k3s.sh script in this directory
- [x] Create a first
- [x] Congrats