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
                bat 'git add helloworld/target/helloworld-1.0.0-SNAPSHOT-mule-application.jar'
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
