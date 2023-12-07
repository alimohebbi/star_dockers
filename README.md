# STAR Lab Website

Welcome to the repository for the STAR Lab website deployment environment. This repository contains the code and configuration for both the frontend and backend applications, as well as the deployment setup using Docker containers. Below, you'll find information on the technologies used, the servers involved, the deployment environment, and instructions on how to run the website from scratch.

## Technologies Used

### Applications

- **Backend Application**: Developed using the [Django](https://www.djangoproject.com/) framework written in Python. You can find the code [here](https://star-rep.inf.usi.ch/Mohebbi/starlab-server).
  
- **Frontend Application**: Developed using the [Angular](https://angular.io/) framework written in TypeScript. You can find the code [here](https://star-rep.inf.usi.ch/Mohebbi/starlab-ui).

- **Content Management System (CMS)**: Provided by the Django framework.

### Servers

- **Application Server (Backend)**: [Gunicorn](https://gunicorn.org/) is used to run the backend application.

- **Web Server (Frontend and Static Content)**: [Nginx](https://www.nginx.com) is utilized to handle static content and forward requests for dynamic content to Gunicorn.

## Deployment Environment

The deployment environment is containerized using [Docker](https://www.docker.com/). There are four containers in our deployment:

1. `nginx-c`: Nginx web server
2. `guni-c`: Gunicorn application server
3. `puller-c`: Updates bibliography and papers repositories every 24hrs.
4. `angular-c`: Compiles Angular code (stops after compilation).

### Communication Channels

- **Docker Network**: A virtual network named `mynet` facilitates communication between Nginx and Gunicorn.

- **Docker Volumes**:
  - `media`: Papers repository, bibliography repository, people images, software HTML descriptions, and downloads.
  - `static`: Angular compiled files.
  - `database`: Database files.

### Running the Website from Scratch

To start the website on a new host, follow these steps:

1. Install Docker.
2. Create folders `media`, `static`, `database` on the host.
3. Clone bibliography and paper repositories into the `media` folder.
4. Clone https://star-rep.inf.usi.ch/Mohebbi/star_dockers.
5. Run `restart.sh` in gunicorn-image.
6. Run `restart.sh` in angular-image.
7. Run `restart.sh` in nginx-image.
8. Run `restart.sh` in puller-image.

> Note: Some applications in the image may require config files, available in the same folder as the Dockerfile.

### HTTPS Protocol

We use [certbot](https://certbot.eff.org/) for HTTPS. To install `certbot`, follow these steps:

1. Run an interactive shell session in the `nginx-c` container using:
   ```
   docker exec -it nginx-c bash
   ```
2. Follow the [instructions](https://certbot.eff.org/instructions?ws=nginx&os=pip) for installing `certbot` for Nginx via pip.
