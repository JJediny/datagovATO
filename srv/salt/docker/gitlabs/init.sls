include:
  - docker.setup

gitlab-storage:
  file.directory:
    - name: /opt/gitlab-storage

gitlab/gitlab-ce:
  dockerng.image_present:
    - require:
      - sls: docker.setup
      - file: gitlab-storage
    - require_in:
      - dockerng: run-gitlab-container

run-gitlab-container:
  dockerng.running:
    - image: 'gitlab/gitlab-ce'
    - detach: True
    - user: 'root'
    - binds:
      - /opt/gitlab-storage:/srv/gitlab
    - port_bindings:
      - 80:80/tcp
      - 443:443/tcp
    - start: True
