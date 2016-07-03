
{% from "docker/postgres-docker/map.jinja" import postgres_docker with context %}

include:
  - docker

{{ postgres_docker.image }}:
  dockerng.image_present:
    - require:
      - pkg: lxc-docker

{% for instance, attr in postgres_docker.instances.iteritems() -%}
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
    - image: {{ postgres_docker.image }}
    - environment:
      - POSTGRES_PASSWORD: {{ attr['root_password'] }}
    - port_bindings:
      - {{ attr['host_port'] }}:5432
    - binds:
    {% if attr['binds'] is defined %}
    {% for bind in attr['binds'] %}
      - {{ bind }}
    {% endfor %}
    {% endif %}
    - restart_policy: always
    - require:
      - dockerng: {{ postgres_docker.image }}
{% endfor %}
