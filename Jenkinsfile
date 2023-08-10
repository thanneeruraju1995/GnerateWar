pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Clone your Git repository
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                // Build the Java application using Maven
                sh 'mvn clean package'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deploy the built application (example: copying to a server)
                sh 'scp target/your-app.jar user@your-server:/path/to/deploy'
            }
        }
    }
    
    post {
        always {
            // Clean up or notify after the pipeline completes
            echo 'Pipeline completed'
        }
    }
}
