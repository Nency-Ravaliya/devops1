pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "your-dockerhub-username/your-app:${env.BUILD_ID}"
        HELM_RELEASE_NAME = "your-app"
        HELM_CHART_PATH = "./your-app-chart"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build(DOCKER_IMAGE)
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Deploy with Helm') {
            steps {
                script {
                    sh "helm upgrade --install ${HELM_RELEASE_NAME} ${HELM_CHART_PATH} --set image.repository=${DOCKER_IMAGE}"
                }
            }
        }
    }
}
