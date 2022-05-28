pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn -B package --file helloworld/pom.xml'
                archiveArtifacts artifacts: 'helloworld/target/*.jar'
            }
        }
        
        stage ('Transfer file to GitHub') {
            steps {
                //bat 'copy helloworld\\target\\helloworld-1.0.0-SNAPSHOT-mule-application.jar C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\helloworld\\target\\'
                //dir("C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\helloworld\\target\\") {
                    //bat 'dir'
                    //bat 'git add helloworld-1.0.0-SNAPSHOT-mule-application.jar'
                    //bat 'git commit -m "add mule app"'
                    //bat 'git push'
                //}
                bat 'dir'
            }
        }
        
        stage ('Docker Build') {
            steps {
                bat 'docker build . --tag="mule-hello" -f Dockerfile'   
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
