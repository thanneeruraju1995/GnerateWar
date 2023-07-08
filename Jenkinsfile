pipeline {
   agent any
   stages {
       stage('Build Code11') {
           steps {
               sh "mvn clean package"
               echo "Building Artifact for project"
               
           }
       }

       stage('Deploy Code') {
	   when
	   {
	   branch "master"
	   	   }
          steps {
               sh "mvn tomcat7:deploy"
               echo "Deploying Code"
               
          }
      }
      }
      }
