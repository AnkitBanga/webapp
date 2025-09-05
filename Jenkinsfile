pipeline {
    agent {label 'azurevm'  }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build("banga1/my-webapp:${env.BUILD_NUMBER}")
                }
            }
        }
        stage('Push Docker Image (Optional)') {
            steps {
                script {
                    // Push the image to a Docker registry (e.g., Docker Hub)
                    // Requires Docker Hub credentials configured in Jenkins
                    docker.withRegistry('https://registry.hub.docker.com', '1') {
                        docker.image("banga1/my-webapp:${env.BUILD_NUMBER}").push()
                    }
                }
            }
        }
        stage('Deploy to azure container')
            steps {
                script {

                     //Stop and remove any existing container with the same name
                       sh 'docker stop my-webapp-container || true'
                       sh 'docker rm my-webapp-container || true'

                    //Run the Docker container
                       sh "docker run -d -p 9090:80 --name my-webapp-container banga1/my-webapp:${env.BUILD_NUMBER}"
                }
            }
        }
    }
}
