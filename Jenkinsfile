node {
  stage('SCM') {
    git 'https://gitlab.com/bluestone1/bluestone-java-maven'
      }
  stage('Complie-Package') {
      //Get Maven path
      def mvnHome = tool name: 'Maven3', type: 'maven'
      sh "${mvnHome}/bin/mvn package"
    }
  }
}
