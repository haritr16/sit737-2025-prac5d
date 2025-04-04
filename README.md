# sit737-2025-prac5d
Steps to deploy the microservice to GCP
1.	Install Google cloud SDK
•	Download and install Google cloud SDK 
•	Follow the commands to complete the installation
•	Open the Google Cloud CLI
2.	Log in to GCP
•	Log in to GCP using the student credentials
•	Open the assigned project
•	Connect to GCP account from Google SDK
•	Configure the region to Australia
3.	Create Artifact registry
•	Enable artifact registry API using the command gcloud services enable artifactregistry.googleapis.com
•	Create a new artifact registry - gcloud artifacts repositories create my-webapp --repository-format=docker --location=australia-southeast1 --description="My Artifact Repository"
4.	Create docker image
•	Open the project directory
•	Create a docker file.
•	Create the docker image using the command – docker build -t
•	Verify the docker image in the docker desktop
5.	Authenticate registry to use docker
•	Provide authentication for docker to use GCP using the commad - gcloud auth configure-docker australia-southeast1-docker.pkg.dev
•	Tag the docker image to the artifact created in GCP.
6.	Verify the artifact registry
•	Push the docker image to the registry.
•	Open artifact in GCP
•	Verify if the image is present.
7.	Test the microservice
•	Use the docker run to run the image.
•	Verify that the website is running successfully. 
8.	Push the code to Github.
•	Initialize a Git repository (git init).
•	Add and commit files using the commands - git add . & git commit -m "Initial commit".
•	Push to a GitHub repository.
