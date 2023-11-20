# Welcome to my solution!

I have created 2 directories, one per project. In each of them you'll find README.md file in the root and down in the modules/roles as well thought for the consumers (aka people that will use the modules/roles).


## Ansible

The solution has been tested on Ubuntu 22.04. Ideally will work on all apt compatible systems, but i've decided to fail if the OS version is different, due to the (possible) different packages naming.
The playbook is made of 2 roles (**app** and **docker**) with dependency (**app** explicitly require docker **docker**).
Among all the steps, 3 doesn't pass the lint, but i left them despite not consider best practice as they simplify the role and the code quite a lot.


## Terraform

The solution include a local module (i could have used an external repo and use versioning for it but i thought it would make the code a bit less readable for the purpose of the exercise).
Documentation has been generated automatically by  [terraform-docs](http://https://terraform-docs.io//) app (present in both root and module).

