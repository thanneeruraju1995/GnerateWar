pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'mvn clean package'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing..'
                // You can add your testing steps here
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying to AWS Linux Tomcat....'
                sh 'scp target/SampleWebApp123##3.0-SNAPSHOT.war ec2-user@15.206.153.186:/path/to/tomcat/webapps/'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed'
        }
    }
}
