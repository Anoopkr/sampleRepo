pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                cleanWs()
                sh 'node --version'
                sh 'python --version'
                sh 'dotnet --version'
                sh 'aws --version'
                sh 'ls'
                sh 'npm install --force'
            }
        }
//         stage('Verify AWS'){
//               steps {
//                   withAWS(region:'ap-south-1', useNode: true) {
//                         sh 'aws s3 ls'
//                     }
//               }
//         }
        stage('Clean'){
            steps{
                cleanWs()
            }            
        }
    }
}
