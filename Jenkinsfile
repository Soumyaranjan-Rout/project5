pipeline {
    agent any
    stages {
        stage ('git url fetch') {
            steps {
                git url:'https://github.com/Soumyaranjan-Rout/project5.git'
            }
        }
        stage ('maven build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Check WAR File') {
            steps {
                sh 'ls -l webapp/target/*.war'
            }
        }
        stage ('docker image') {
            steps {
                sh 'docker build -t soumyaranjanrout0/project5 .'
            }
        }
        stage ('docker login') {
            steps {
                withCredentials([string(credentialsId: 'dockerhublogin', variable: 'dockerhublogin')]) {
                    sh 'docker login -u soumyaranjanrout0 -p ${dockerhublogin}'
                }
            }
        }
        stage ('docker iamage push') {
            steps {
                sh 'docker push soumyaranjanrout0/project5'
            }
        }
        stage ('conaatainer using ansible') {
            steps {
                ansiblePlaybook inventory: '172.31.92.138,' , become: true, credentialsId: 'ansible', disableHostKeyChecking: true, playbook: 'playbook.yml', vaultTmpPath: ''
            }
        }
    }
}
