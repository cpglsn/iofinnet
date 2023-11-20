App
=========

An Ansible Role that installs app on Ubuntu 22.04.
The role will install:

- 3 docker containers of app listening on port 8181.
- 1 HAProxy load balancer container to forward requests to the 3 app instances in a round-robin fashion.

Requirements
------------

- Target host must be Ubuntu 22.04. The role will check anyway if the OS is at the correct version.
- Internet connection.

Role Variables
--------------

Available variables are listed below, along with default values for the 2 env (see group_vars/dev.yml and group_vars/staging.yml)

    Tuning: true

Enable or disabe tuning.

    Debug: true

Enable or disable debug.

    External_URL: "https://dev/approve"

The URL from which app should be reachable.

    Client: "dev_client_external"

The client name.

    Interaction_Mode: "API"

The mode in which the app is interacting.

    Device_ID: 2346456

The device ID.

Dependencies
------------

The docker role must be run beforehand. The docker role is anyway listed in the dependency, so it will be run (only once) before this role.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: app }
