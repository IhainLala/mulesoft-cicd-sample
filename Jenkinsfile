pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn -B package --file helloworld\pom.xml'
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
