{%- from "gitlab/map.jinja" import client with context %}
{%- if client.enabled %}

gitlab_client_packages:
  pkg.removed:
  - names: {{ client.pkgs }}

gitlab_install_pip:
  pkg.installed:
    - name: python-pip

gitlab_client_pip_package:
  pip.installed:
  - name: python-gitlab

{%- endif %}
