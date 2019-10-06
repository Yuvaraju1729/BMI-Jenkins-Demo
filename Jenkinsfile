pipeline {
    agent any
    tools {
        maven "Maven"   
    }    
    stages {
        stage('Compile-Build-Test') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('SonarQube Analysis'){
            steps{
                withSonarQubeEnv('sonarqube'){
                    sh 'mvn sonar:sonar'
                }
            }
        }
        stage('uploading to nexus'){
            steps{
                nexusArtifactUploader artifacts: [[artifactId: 'BMI', classifier: '', file: 'pom.xml', type: 'jar']], credentialsId: 'nexus-credentialss', groupId: 'com.aea', nexusUrl: 'ec2-18-224-155-110.us-east-2.compute.amazonaws.com:8081/nexus', nexusVersion: 'nexus2', protocol: 'http', repository: 'devopstraining', version: '0.0.1-SNAPSHOT'
            }
    }
}
