define jenkins::app ( 
  $jenkins_version,
  $tomcat_major_version,
){
  class { 'profile::app::jenkins':
    jenkins_version      => $jenkins_version,
    tomcat_major_version => $tomcat_major_version,
  }
}
Jenkins::App produces Tomcat {
  host => $::fqdn,
  port => 8080,
}
