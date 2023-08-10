pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'myapp:latest'
        KUBE_NAMESPACE = 'my-namespace'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'mvn test'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                // Assuming your Dockerfile is in the root directory of your repository
                sh "docker build -t $DOCKER_IMAGE_NAME ."
            }
        }
        
        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image...'
                withCredentials([string(credentialsId: 'docker-hub-credentials', variable: 'DOCKER_HUB_CREDENTIALS')]) {
                    sh "docker login -u <docker_username> -p $DOCKER_HUB_CREDENTIALS"
                    sh "docker push $DOCKER_IMAGE_NAME"
                }
            }
        }
        
        stage('Deploy to Kubernetes') {
            steps {
                echo 'Deploying to Kubernetes...'
                sh "kubectl apply -f kubernetes/deployment.yaml --namespace $KUBE_NAMESPACE"
                sh "kubectl rollout status deployment/myapp-deployment --namespace $KUBE_NAMESPACE"
            }
        }
    }
    
    post {
        always {
            echo 'Pipeline completed'
        }
        
        success {
            echo 'Pipeline succeeded'
            // Replace this with your actual notification command or script
            sh 'echo "Pipeline succeeded"'
        }
        
        failure {
            echo 'Pipeline failed'
            // Replace this with your actual notification command or script
            sh 'echo "Pipeline failed"'
        }
    }
}
