application jenkins (
  $tomcat_major_version  = "7",
  $jenkins_version       = "latest",
) {
  jenkins::app { $name:
    tomcat_major_version => $tomcat_version,
    jenkins_version      => $jenkins_version,
    export               => Tomcat["jenkins-${name}"],
  }
  jenkins::web { $name:
    consume     => Tomcat["jenkins-${name}"],
  }
}
