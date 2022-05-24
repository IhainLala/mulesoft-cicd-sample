#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
            }
        }
        stage ('Docker Build') {
            steps {
                sh 'git add C:/Users/lihainjan/AppData/Local/Jenkins/.jenkins/workspace/multiple-pipeline_main/helloworld/target/helloworld-1.0.0-SNAPSHOT-mule-application.jar'
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
