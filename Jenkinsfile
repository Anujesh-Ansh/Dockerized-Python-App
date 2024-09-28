pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('python-web-app')
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.run('python-web-app')
                }
            }
        }
    }
}
