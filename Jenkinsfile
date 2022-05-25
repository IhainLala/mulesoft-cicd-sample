pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
                archiveArtifacts artifacts: 'helloworld/target/*.jar'
            }
        }
        
        stage ('Transfer file') {
            steps {
                bat 'copy helloworld\\target\\helloworld-1.0.0-SNAPSHOT-mule-application.jar C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\helloworld\\target\\'
                bat 'cd C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\'
                bat 'git add helloworld\\target\\helloworld-1.0.0-SNAPSHOT-mule-application.jar'
                bat 'git commit -m "jar file committed"'
                bat 'git push origin HEAD:master --force'
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
