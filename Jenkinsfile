pipeline {
    agent {label 'your domain'}
    stages {
        stage('Build') {
        parallel {
            stage('gateway1 service') {
                 steps{
                    sh '''#!/bin/bash
                    	sudo docker-compose down
		    	sudo docker-compose up -d --build --remove-orphans
 			echo 'build test and deploy completed';
                    '''
                  }
             }
            }
        }
    }
}
