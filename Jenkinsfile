pipeline {
  agent any
  stages {
    stage("Installations") {
      steps {
        sh '''
          docker version
          docker info
          docker-compose version 
        '''
      }
    }
    stage('Start container') {
      steps {
        sh 'docker-compose up --detach'
        sh 'docker-compose ps'
      }
    }
	stage('Pause/Unpause container') {
      steps {
        sh 'docker-compose pause'
        sh 'docker-compose ps'
	sh 'docker-compose unpause'
        sh 'docker-compose ps'
	sh 'docker-compose stop'
	sh 'docker-compose ps'
		
      }
    }
   
  }
  post {
    always {
      sh 'docker-compose down --remove-orphans -v'
      sh 'docker-compose ps'
    }
  }
}
