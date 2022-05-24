pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
            }
        }
        post {
            always {
                archiveArtifacts artifacts: 'target/*.jar', onlyIfSuccessful: true
            }
        }
        stage ('Docker Build') {
            steps {
                echo 'Testing.'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
