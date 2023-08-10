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
                // Dummy build command
                sh "echo 'Simulating docker build'"
            }
        }
        
        stage('Push Docker Image') {
            steps {
                echo 'Pushing Docker image...'
                // Dummy push command
                sh "echo 'Simulating docker push'"
            }
        }
        
        stage('Deploy to Kubernetes') {
            steps {
                echo 'Deploying to Kubernetes...'
                // Dummy deploy command
                sh "echo 'Simulating kubectl apply'"
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
