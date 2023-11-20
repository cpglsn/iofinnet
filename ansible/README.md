Docker
=========

An Ansible playbook to installs app and requirements.

Requirements
------------

- Target host must be Ubuntu 22.04. The role will check anyway if the OS is at the correct version.
- Internet connection.

Role Variables
--------------

Only specific to the app role. Check the app role readme for more info.

Dependencies
------------

Ansible >= 2.16.0 .

Example Playbook
----------------

    ansible-playbook -kK -i hosts.ini main.yml
