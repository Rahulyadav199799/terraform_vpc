pipeline {
    agent any 
    stages {
        stage('Clone from Github'){
            steps {
                git branch: 'main', url: 'https://github.com/Rahulyadav199799/terraform_vpc.git'
            }
        }
        stage('terraform init'){
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform plan'){
            steps {
                sh 'terraform plan'
            }
        }
        stage('terraform apply'){
            steps {
                sh 'terraform apply'
            }
        }
    }   
}
