pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'python --version'
                sh 'dotnet --version'
                sh 'aws --version'
            }
        }
        stage('Verify AWS'){
              steps {
                  withAWS(region:'ap-south-1', useNode: true) {
                        sh 'aws s3 ls'
                    }
              }
        }
    }
}
