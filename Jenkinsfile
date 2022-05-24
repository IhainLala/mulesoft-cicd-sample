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
                sh 'git add ${JENKINS_HOME}/multiple-pipeline_main/helloworld/target/*.jar"
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
