pipeline {
    environment {
        registry = "lihaina/docker-helloworld"
        registryCredential = 'dockerhub'
    }
    agent any
    stages {
        stage('Build artifact') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
                archiveArtifacts artifacts: 'helloworld/target/*.jar'
            }
        }
        
        stage ('Transfer file to GitHub') {
            steps {
                bat 'copy helloworld\\target\\helloworld-1.0.0-SNAPSHOT-mule-application.jar C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\helloworld\\target\\'
                dir("C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\helloworld\\target\\") {
                    bat 'git pull'
                    bat 'git add helloworld-1.0.0-SNAPSHOT-mule-application.jar'
                    bat 'git commit -m "add mule app"'
                    bat 'git push'
                }
            }
        }
        
        stage ('Docker build') {
            steps {
                dir("C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\") {
                    script {
                        dockerImage = docker.build registry
                        
                    }
                }
            }
        }
        
        stage ('Testing') {
            steps {
                echo 'Testing..'
            }
        }
        
        stage ('Deploy') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push("$BUILD_NUMBER")
                        dockerImage.push('latest')
                    } 
                }
            }
        }
    }
}
