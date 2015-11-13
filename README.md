Quick start
===========

- Clone this repository
- Build the image: `docker build -t="lafayette/php5-moodle" .`
- Register the runner: `docker exec -it gitlab-runner gitlab-runner register`. Do not specify a database.
- See the documentation for `lafayette/mysql-moodle` for instructions on configuring database support.