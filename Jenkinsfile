pipeline {
    agent any

    environment {
        AWS_REGION = 'eu-central-1'
        AWS_ACCESS_KEY_ID = ''
        AWS_SECRET_ACCESS_KEY = ''
    } 

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/PriyankaJ6/Masterjenkins.git']])
            }
        }
        stage('Terraform INIT') {
            steps {
                script {
                  sh 'terraform init'
                }
            }
        }
        stage('Terraform PLAN') {
            steps {
                script {
                  sh 'terraform plan'
                }
            }
        }
        stage('Terraform APPLY') {
            steps {
                script {
                  sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}    
