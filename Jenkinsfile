pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
                archiveArtifacts artifacts: 'helloworld/target/*.jar'
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
