pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Check out the code from Git
                git branch: 'main', url: 'https://github.com/yourusername/yourrepository.git'
            }
        }
        
        stage('Build') {
            steps {
                // Build the Maven project
                sh 'mvn clean package'
            }
        }
        
        stage('Deploy to Docker') {
            steps {
                // Build Docker image
                sh 'docker build -t yourimagename .'
                
                // Push Docker image to a registry (optional)
                // sh 'docker push yourregistry/yourimagename'
                
                // Run Docker container
                sh 'docker run -d -p 8080:8080 yourimagename'
            }
        }
    }
    
    post {
        always {
            // Clean up after the build
            sh 'docker system prune -f'
        }
    }
}
