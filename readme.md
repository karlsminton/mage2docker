# Mage2Docker
A basic magento2-compatible docker instance based on docker-compose.

### Getting Started
Make sure you've installed docker (https://docs.docker.com/install/) and docker-compose (https://docs.docker.com/compose/install/) for your platform.

Clone this repo into the directory you wish to host the site from. In my case I've created a `~/Containers/ProjectName` directory, and cloned into that.
When you're set up enter this directory and then run `docker-compose up` which will install all relevant images.

If this process suceeded you should be able to add `127.0.0.1 phpdocker.local` to `/etc/hosts`.
_If you wish to use a different hostname change the value in_ `./default.conf` _before running_ `docker-compose up` _and add this value instead to your hostfile._

In order to use the database you may also want to add `127.0.0.1 db` to your hostfile as well.
`db` is referenced in your `docker-compose.yaml` and by adding this you can use that as your database host in `app/etc/env.php`
