Docker
=========

An Ansible Role that installs docker on Ubuntu 22.04.

Requirements
------------

- Target host must be Ubuntu 22.04. The role will check anyway if the OS is at the correct version.
- Internet connection.

Role Variables
--------------

None.

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: docker }
