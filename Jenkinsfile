pipeline {
    environment {
        registry = "lihaina/docker-helloworld"
        registryCredential = 'dockerhub'
        project_name = "helloworld"
        workspace_git = "C:\\Users\\lihainjan\\Documents\\MulesoftJenkins\\mulesoft-cicd-sample\\"
    }
    
    agent any
    stages {
        stage('Build artifact') {
            steps {
                bat 'mvn -B package --file ' + project_name + '/pom.xml'
                archiveArtifacts artifacts: project_name + '/target/*.jar'
            }
        }
        
        stage ('Transfer file to GitHub') {
            steps {
                bat 'copy ' + project_name + '\\target\\*.jar ' + workspace_git + '\\' + project_name + '\\target\\'
                dir(workspace_git + '\\' + project_name + '\\target\\') {
                    bat 'git pull'
                    bat 'git add .'
                    bat 'git commit -m "add mule app"'
                    bat 'git push'
                }
            }
        }
        
        stage ('Docker build') {
            steps {
                dir(workspace_git) {
                    script {
                        dockerImage = docker.build registry + ":$BUILD_NUMBER"   
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
                        dockerImage.push()
                    }
                    bat 'docker run -d -p 8081:8081 ' + registry + ":$BUILD_NUMBER"  
                }
            }
        }
    }
}
