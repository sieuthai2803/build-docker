Jenkinsfile (Declarative Pipeline)
pipeline {
    agent {
        dockerfile true
    }
    stage('checkout') {
        checkout scm
        sh "rm -Rf ../common/"
        sh "git@github.com:exchange-minimal/common.git"
    }
    stage('check java') {
        sh "java -version"
    }
    stage('clean') {
        sh "chmod +x gradlew"
        sh "./gradlew clean --no-daemon"
    }
    stage('packaging') {
        sh "./gradlew war --no-daemon"
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'gradle build'
            }
        }
    }
}