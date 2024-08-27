# Containerized Development Environment with Docker

This repository offers a streamlined solution for quickly setting up and managing a development environment that incorporates a database, a reverse proxy tool, and an identity provider using Docker containers.

## Overview

The primary goal of this project is to simplify the creation and configuration of a robust development environment. It includes the following key components:

## Prerequisites

Before you can start using this containerized development environment, make sure you have the following software installed on your system:

* **Docker:** You can download and install Docker from [Docker's official website](https://www.docker.com/get-started/).

![docker](https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Docker_%28container_engine%29_logo.svg/2560px-Docker_%28container_engine%29_logo.svg.png)

* **Docker-Compose:** You can download and install Docker-Compose from [this tutorial](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04).

![docker-compose](https://openwhisk.apache.org/images/deployments/logo-docker-compose-text.svg)

## Installation and Setup

Follow these steps to set up the containerized development environment:

**1 - Clone or Download the Repository:**

Clone this repository to your local machine or download the source code

```bash
git clone https://github.com/Mulekotd/postgres-docker-environment.git

cd postgres-docker-environment
```

**2 - Set up environment variables:**

In the project directory, create a .env file like this.

```.env
POSTGRES_DB=mydatabase
POSTGRES_USER=myuser
POSTGRES_PSWD=mysecretpassword

PGADMIN_EMAIL=admin@example.com
PGADMIN_PSWD=pgadminpassword

DB_VENDOR=postgresql
DB_ADDR=database-host

NETWORK=my-dev-network
```

**3 - Start the Docker Containers:**

In the project directory, use Docker Compose to start the containers defined in the docker-compose.yml file.

```bash
docker-compose up -d --build
```

## Usage

With the containerized development environment set up, you can now develop and test your applications, utilizing the provided services for database management and identity services.

## PostgreSQL Database

![postgres](https://snipboard.io/aREe2G.jpg)

The project containerizes a PostgreSQL database using Docker. It allows developers to easily deploy and manage a PostgreSQL instance for their development needs. Key features include:

* PostgreSQL Version: Utilizes PostgreSQL version 12 for reliability and compatibility.
* Customizable Configuration: Easily configure your PostgreSQL database by setting environment variables for database name, user, and password.
* Port Mapping: Maps port 5433 on your local machine to the database container for seamless connectivity.
* Data Persistence: Ensures data persistence by mounting the database data directory to a local volume.

## PGAdmin Management Tool

![pgadmin](https://snipboard.io/QrXZ4E.jpg)

The project also incorporates PGAdmin, a popular PostgreSQL management tool. This tool simplifies database administration and provides a user-friendly interface. Key features include:

* PGAdmin Version: Deploys PGAdmin version 4.6 within a Docker container.
* Secure Access: Configure PGAdmin with a default email and password for secure access.
* Port Mapping: Maps port 5050 on your local machine to the PGAdmin container for convenient management.
* Data Persistence: Ensures data persistence by mounting the PGAdmin data directory to a local volume.

## Nginx Reverse Proxy

![nginx](https://snipboard.io/tIDw4x.jpg)

The project employs Nginx as a reverse proxy server, enabling you to efficiently route traffic to different services within your development environment. Key features include:

* Nginx Version: Utilizes the latest Nginx image.
* Custom Configuration: Easily customize Nginx configuration by mounting your own configuration files.
* Port Mapping: Maps port 80 on your local machine to the Nginx container for traffic routing.

## License

This project is open-source and is provided under the MIT License. You are free to use and modify it as needed. Feel free to contribute to the project or report any issues on the GitHub repository.

![mit](https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/MIT_logo.svg/1920px-MIT_logo.svg.png)

## Feedback and Contributions

We welcome feedback, suggestions, and contributions from the community. If you have ideas for improvements or encounter any issues, please don't hesitate to [open an issue](https://github.com/Mulekotd/dockerized-environment-stack/issues) on GitHub.
