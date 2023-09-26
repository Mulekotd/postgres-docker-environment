# Containerized Development Environment with Docker

This repository offers a streamlined solution for quickly setting up and managing a development environment that incorporates a database, a reverse proxy tool, and an identity provider using Docker containers.

##Project Overview

The primary goal of this project is to simplify the creation and configuration of a robust development environment. It includes the following key components:

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

## Keycloak Identity Provider

![keycloak](https://snipboard.io/DVH1yQ.jpg)

The project includes Keycloak, an open-source identity and access management solution. Keycloak simplifies user authentication and authorization, making it ideal for securing your applications. Key features include:

* Keycloak Version: Deploys the latest Keycloak image from Quay.io.
* Admin Configuration: Customize your Keycloak admin credentials for secure access.
* Database Integration: Seamlessly integrates with a PostgreSQL database for user management.
* Port Mapping: Maps port 8080 on your local machine to the Keycloak container for easy access.

## Nginx Reverse Proxy

![nginx](https://snipboard.io/tIDw4x.jpg)

The project employs Nginx as a reverse proxy server, enabling you to efficiently route traffic to different services within your development environment. Key features include:

* Nginx Version: Utilizes the latest Nginx image.
* Custom Configuration: Easily customize Nginx configuration by mounting your own configuration files.
* Port Mapping: Maps port 80 on your local machine to the Nginx container for traffic routing.
