define jenkins::web ( 
  $host,
  $port,
){
  include profile::apache
  profile::apache::rproxy_vhost { "${::fqdn}":
    host => $host,
    port => $port,
  }
}
Jenkins::Web consumes Tomcat {
  host => $host,
  port => $port,

}
