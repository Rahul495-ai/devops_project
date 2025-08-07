pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage('Create Infra') {
      steps {
        dir('terraform') {
          sh './create_infra.sh'
        }
      }
    }

    stage('Deploy Apps') {
      steps {
        dir('terraform') {
          sh './deploy_apps.sh'
        }
      }
    }

    stage('Test Solution') {
      steps {
        dir('terraform') {
          sh './test_solution.sh'
        }
      }
    }
  }
}
