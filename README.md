# hackathon-project
Hackathon Project - DevOps Portfolio Website

This project is a simple portfolio website for Prathmesh Shinde, hosted inside a Docker container using Nginx. It is deployed using Docker Compose and can be accessed on port 3000.

Features

Simple static website using HTML & CSS

Hosted using Nginx

Packaged with Docker & Docker Compose

Runs on port 3000

GitHub repository with main and dev branches

Project Structure

hackathon-project/
├── Dockerfile
├── docker-compose.yml
├── index.html
├── style.css
├── pratham2025.jpeg
├── Prathmesh_Shinde.pdf
└── README.md

Setup & Installation

1️⃣ Clone the Repository
git clone -b main https://github.com/sprathmesh/hackathon-project.git
cd hackathon-project
2️⃣ Build and Run the Docker Container
docker-compose up --build -d
This will build the Docker image and start the container in the background.
3️⃣ Access the Website
License

Open your browser and visit:
http://localhost:3000
4️⃣ Stop the Container
docker-compose down
Dockerfile Explanation


----------------------------
    Git Branching Strategy

main: Production-ready branch

dev: Development branch

Switching Between Branches

git checkout main  # Switch to main branch
git checkout dev   # Switch to dev branch

Contact

Prathmesh Shinde📧 Email: cnct.prathmesh@gmail.com🔗 GitHub: sprathmesh🔗 LinkedIn: Prathmesh Shinde🔗 DockerHub: sprathmesh
