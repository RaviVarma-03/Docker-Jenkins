pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Cloning the repository
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    
                    // Build the Docker image using the Dockerfile in the repository
                    sh 'docker build -t ravi0396/thirdimage .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'Dockerhub', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')]) {
                        // Login to Docker Hub
                         sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"

                        // Push the Docker image to Docker Hub
                        sh 'docker push ravi0396/thirdimage'
                    }
                }
            }
        }
    }

}
