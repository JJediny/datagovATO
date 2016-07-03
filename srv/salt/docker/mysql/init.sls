{% from "docker/mysql-docker/map.jinja" import mysql_docker with context %}

include:
  - docker

{{ mysql_docker.image }}:
  dockerng.image_present:
    - require:
      - pkg: lxc-docker

{% for instance, attr in mysql_docker.instances.iteritems() -%}
{% if attr['binds'] is defined %}
{% for bind, value in attr['binds'].iteritems() %}
{% if value is not none %}
{{ bind.split(':')[0] }}:
  file.managed:
    - source: {{ value }}
    - require_in:
      - dockerng: {{ instance }}
{% endif %}
{% endfor %}
{% endif %}

{{ instance }}:
  dockerng.{{ attr['state'] }}:
    - name: {{ instance }}
    - image: {{ mysql_docker.image }}
    - environment:
      - MYSQL_ROOT_PASSWORD: {{ attr['root_password'] }}
    - port_bindings:
      - {{ attr['host_port'] }}:3306
    - binds:
    {% if attr['binds'] is defined %}
    {% for bind in attr['binds'] %}
      - {{ bind }}
    {% endfor %}
    {% endif %}
    - restart_policy: always
    - require:
      - dockerng: {{ mysql_docker.image }}
{% endfor %}
