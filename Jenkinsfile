pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from a Git repository
                git 'https://github.com/your-username/your-repo.git'
            }
        }
        
        stage('Build') {
            steps {
                // Build your project (replace with actual build commands)
                sh 'mvn clean install'
            }
        }
        
        stage('Test') {
            steps {
                // Run tests (replace with actual test commands)
                sh 'mvn test'
            }
        }
    }
    
    post {
        always {
            // Archive artifacts (replace with your specific paths)
            archiveArtifacts artifacts: '**/target/*.jar', allowEmptyArchive: true
        }
        
        success {
            // Send a notification on success (e.g., email, Slack, etc.)
            echo 'Build and tests were successful!'
        }
        
        failure {
            // Send a notification on failure (e.g., email, Slack, etc.)
            echo 'Build or tests failed!'
        }
    }
}
