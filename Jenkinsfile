pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build("my-webapp:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove any existing container with the same name
                    sh 'docker stop my-webapp-container || true'
                    sh 'docker rm my-webapp-container || true'

                    // Run the Docker container
                    sh "docker run -d -p 9091:80 --name my-webapp-container my-webapp:${env.BUILD_NUMBER}"
                }
            }
        }
    }
}
