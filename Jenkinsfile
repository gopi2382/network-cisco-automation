pipeline {
  agent any

  environment {
    ANSIBLE_HOST_KEY_CHECKING = 'False'
  }

  stages {
    stage('Clone GitHub Repo') {
      steps {
        git branch: 'main', url: 'https://github.com/gopi2382/network-cisco-automation.git'
      }
    }

    stage('Run Ansible Playbook') {
      steps {
        sh 'ansible-playbook -i inventory.ini playbooks/basic_config.yml'
      }
    }
  }

  post {
    success {
      echo '✅ Configuration pushed to Cisco Sandbox successfully!'
    }
    failure {
      echo '❌ Build failed. Check console for errors.'
    }
  }
}
