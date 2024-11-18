<h1>Coda Docker</h1>

# Specifications 📋
Small Docker project carried out during my training at Coda for my 3rd year of license.
This Docker project allows to launch a web server, a mysql server, to install php and phpmyadmin in order to have a simple php and mysql project to work on the docker.

## Software Used
![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)

## Languages Used
![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)


## How to deploy the Docker on your machine?

1. **Clone the repository**:
    ```sh
    git clone https://github.com/ArthurAugis/Docker-Coda
    cd Docker-Coda
    ```

2. **Build the Docker images**:
    ```sh
    docker-compose build
    ```

3. **Start the Docker containers**:
    ```sh
    docker-compose up -d
    ```

4. **Access the web server**:
    Open your web browser and go to `http://localhost`.

5. **Access phpMyAdmin**:
    Open your web browser and go to `http://localhost:8080`.

6. **Stop the Docker containers**:
    ```sh
    docker-compose down
    ```

7. **Remove the Docker images** (optional):
    ```sh
    docker-compose down --rmi all
    ```

Make sure you have Docker and Docker Compose installed on your machine before following these steps.
