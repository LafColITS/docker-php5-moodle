Quick start
===========

- Clone this repository
- Build the image: `docker build -t="lafayette/php5-moodle" .`
- Register the runner: `docker exec -it gitlab-runner gitlab-runner register`. Enter `5.5` for the mysql version.