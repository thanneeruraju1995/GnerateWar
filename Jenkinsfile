pipeline {
   agent any
   stages {
       stage('Build Code') {
           steps {
               sh """
               echo "Building Artifact for project samplewebapp"
			   """
               
           }
       }
       stage('Reading branched wise')
       {
       when
       {
       branch "feature*"
       }
       steps
       {
       echo " It is only for Feature branch"
       }
       }

       stage('Deploy Code') {
	   
          steps {
               sh """
               echo "Deploying Code"
			   """
               
          }
      }
      }
      }
