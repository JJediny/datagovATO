
docker-compose stop:
  cmd.run:
    - name: docker stop $(docker ps -a -q)
    - cwd: /PATH/

docker-compose rm:
  cmd.run:
    - name: docker-compose rm -f
    - cwd: /PATH/

docker-compose pull:
  cmd.run:
    - name: docker-compose pull
    - cwd: /PATH/

docker-compose up:
  cmd.run:
    - name: docker-compose up -d
    - cwd: /PATH/
