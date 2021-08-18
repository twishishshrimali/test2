node {
  stage('SCM') {
    git 'https://github.com/twishishshrimali/test2'
      }
  stage('Complie-Package') {
      //Get Maven path
      def mvnHome = tool name: 'Maven3', type: 'maven'
      sh "${mvnHome}/bin/mvn package"
    }
  }
