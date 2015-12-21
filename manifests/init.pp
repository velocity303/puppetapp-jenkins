application cloudshop (
  $dbinstance,
  $dbpassword,
  $dbuser,
  $dbname,
  $iis_site      = 'Default Web Site',
  $docroot       = 'C:/inetpub/wwwroot',
  $file_source   = 'https://s3-us-west-2.amazonaws.com/tseteam/files/sqlwebapp',
) {
  cloudshop::db { $name:
    dbuser      => $dbuser,
    dbinstance  => $dbinstance,
    dbpassword  => $dbpassword,
    dbname      => $dbname,
    dbserver    => $::fqdn,
    file_source => $file_source,
    export      => Mssql["orc_sqlapp-${name}"],
  }
  cloudshop::app { $name:
    iis_site    => $iis_site,
    docroot     => $docroot,
    file_source => $file_source,
    consume     => Mssql["orc_sqlapp-${name}"],
  }
}
