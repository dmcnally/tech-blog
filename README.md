# Jekyll Starter

## How to use

### Install Docker

A pre-requisite is that you have Docker installed.


### Build the environment

Run `make build` to create your local docker image

### Local Server

Run `make server` and it will spin up a jekyll server and tailwind watcher using foreman inside the same container used to build and deploy the website when you push to the master branch.


### Configure the CNAME

Update the CNAME file with the name of your domain


### Push your changes

Push your changes to github


### Configure Github pages

You need to configure classic github pages and deploy from a branch

Set the branch to `gh-pages` and the folder to the root `/`


### Make changes, rinse and repeat

Update your website and when you're ready to deploy push your changes to the master branch by whatever process you want.
