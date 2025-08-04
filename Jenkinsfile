pipeline {
  agent any
  stages {
    stage('Checkout') {
  steps {
    git url: 'git@github.com:Avaxstudio/simple-java.git', credentialsId: 'github-ssh'
  }
}

    stage('Test') {
      steps {
        sh './mvnw test'
      }
    }
    stage('Run') {
      steps {
        sh '''
          docker build -t my-java-app .
          docker run -d --name my-running-app my-java-app
        '''
      }
    }
  }
}
