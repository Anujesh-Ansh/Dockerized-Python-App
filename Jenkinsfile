pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "python-web-app"
        DOCKER_TAG = "latest"
        DOCKER_REGISTRY = ""
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the Git repository
                git 'https://github.com/Anujesh-Ansh/Dockerized-Python-App.git'  // Updated with your repo URL
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in your project
                script {
                    sh 'docker build -t $DOCKER_IMAGE:$DOCKER_TAG .'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container on a different port (8000 in this case)
                script {
                    sh 'docker run -d -p 8000:8000 $DOCKER_IMAGE:$DOCKER_TAG'
                }
            }
        }
    }
}
