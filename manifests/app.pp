define cloudshop::app ( 
  $dbserver,
  $dbinstance,
  $dbpassword,
  $dbuser,
  $dbname,
  $iis_site      = 'Default Web Site',
  $docroot       = 'C:/inetpub/wwwroot',
  $file_source   = 'https://s3-us-west-2.amazonaws.com/tseteam/files/sqlwebapp',
){
  class { 'sqlwebapp':
    dbinstance  => $dbinstance,
    dbpass      => $dbpassword,
    dbuser      => $dbuser,
    dbname      => $dbname,
    dbserver    => $dbserver,
    iis_site    => $iis_site,
    docroot     => $docroot,
    file_source => $file_source,
  }
}
Cloudshop::App consumes Mssql {
  dbinstance => $dbinstance,
  dbuser     => $dbuser,
  dbpassword => $dbpassword,
  dbname     => $dbname,
  dbserver   => $dbserver,
}
