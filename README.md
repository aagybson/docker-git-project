# docker-git-project

Containerization and Version Control with Docker & Git Project 

Scope: 

Student will: 
1. Build a Docker image locally using a Dockerfile.
2. Use an image from Docker Hub or build a custom image (Nginx, or Python app).
3. Assign a network and volume to the container.
4. Push the image to Docker Hub.
5. Push the Dockerfile and project files to GitHub.

Steps to Complete the Project 
# Step 1: Install Prerequisites 
Ensure that the student has: 
•  A GitHub account 
•  A Docker Hub account  

# Step 2: Create a Project Directory 
mkdir docker-git-project 
cd docker-git-project  

# Step 3: Write a Dockerfile 
Students can use Redis or any other image they choose. Here’s an example for Redis: 

#Use Redis as the base image 
FROM redis:latest  

#Set environment variables 
ENV ALLOW_EMPTY_PASSWORD=yes  

#Expose the default Redis port 
EXPOSE 6379  

#Command to run Redis 
CMD ["redis-server"]  

Step 4: Build the Docker Image Locally 
docker build -t my-redis-image . 

#Verify the image: 
docker images  

# Step 5: Create a Docker Network & Volume 
#Create a Docker Network  
docker network create my-Jibola-network 

#Create a Docker Volume 
docker volume create my-Jibola-data  

# Step 6: Run the Docker Container with the Network & Volume 
docker run -d \ 
--name my-redis-container \ 
--network my-custom-network \ 
--mount type=bind,source=my-redis-data,target=/data \ 
-p 6379:6379 \ 
my-redis-image 

#Verify that the container is running: 
docker ps  

# Step 7: Push the Image to Docker Hub 
1. Login to Docker Hub:
   docker login
2. Tag the Image:
   docker tag my-redis-image <your-dockerhub-username>/my-redis-image:v1
3. Push the Image:
   docker push <your-dockerhub-username>/my-redis-image:v1

#Verify on Docker Hub that the image was uploaded.

# Step 8: Initialize a Git Repository and Push to GitHub Scope:
1. Initialize Git  git init 
2. Create a .gitignore file to ignore unnecessary files:
   echo "node_modules/" >> .gitignore
   echo ".DS_Store" >> .gitignore
   echo ".env" >> .gitignore
3. Add and Commit Files
   git add .
   git commit -m "Initial Docker project commit"
4. Create a GitHub Repository
   •  Go to GitHub
   •  Create a new repository (e.g., docker-git-project)
   •  Copy the remote URL
5. Push to GitHub
   git remote add origin <your-github-repo-url>
   git branch -M main
   git push -u origin main

# Step 9: Verify Everything 
Check Docker 
•  Run: 
docker ps 
docker images 
docker network ls 
docker volume ls 

Check GitHub 
•  Visit the repository and confirm the Dockerfile and other files are present. 

Check Docker Hub 
•  Visit https://hub.docker.com/ and confirm that the pushed image exists.
