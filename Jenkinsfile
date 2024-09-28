pipeline {
    agent any
    
    environment {
        PROJECT_NAME = "Dockerized Python App"
        REPO_PATH = "/Users/anujeshansh/.jenkins/workspace/Dockerized Python App"
        DOCKER_IMAGE_NAME = "python-web-app"
        DOCKER_CONTAINER_NAME = "python-container"
        
        // Add Docker's path explicitly
        PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Docker.app/Contents/Resources/bin:/opt/homebrew/bin:${env.PATH}"
    }
    
    stages {
        stage('Stage 1: Cloning Repository...') {
            steps {
                echo "Project Name: ${env.PROJECT_NAME}"
                ws("${env.REPO_PATH}") {
                    git branch: 'master', url: 'https://github.com/Anujesh-Ansh/Dockerized-Python-App.git'
                }
            }
        }
        stage('Stage 2: Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                dir("${env.REPO_PATH}") {
                    script {
                        // Build Docker image
                        sh "docker build -t ${env.DOCKER_IMAGE_NAME} ."
                    }
                }
            }
        }
        stage('Stage 3: Run Docker Container') {
            steps {
                echo 'Running Docker Container...'
                dir("${env.REPO_PATH}") {
                    script {
                        // Run Docker container
                        sh "docker run --name ${env.DOCKER_CONTAINER_NAME} -d -p 5000:5000 ${env.DOCKER_IMAGE_NAME}"
                    }
                }
            }
        }
    }
}
