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
                bat 'copy helloworld/target/helloworld-1.0.0-SNAPSHOT-mule-application.jar C:/Users/lihainjan/Documents/MulesoftJenkins/mulesoft-cicd-sample/helloworld/target'
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
