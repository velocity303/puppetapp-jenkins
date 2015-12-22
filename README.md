###Puppet Cloudshop

####A puppet module to perform App Orchestration with the tse_sqlserver and sqlwebapp modules in the TSE Demo Environment.

This module will install and setup a MS SQL Server instance with the AdventureWorks2012 DB and serve that to a ASP.NET application hosted on IIS.

#####Single Node Setup:

```puppet
site {
  cloudshop { 'allinone':
    dbinstance                                  => 'MYINSTANCE',
    dbuser                                      => 'CloudShop',
    dbpassword                                  => 'Azure$123',
    dbname                                      => 'AdventureWorks2012',
    nodes                                       => {
      Node['server2012r2a.pdx.puppetlabs.demo'] => [Cloudshop::App['allinone'], Cloudshop::Db['allinone']],
    },
  }
}
```
#####Dual Node Setup:

```puppet
site {
  cloudshop { 'split':
    dbinstance                                  => 'MYINSTANCE',
    dbuser                                      => 'CloudShop',
    dbpassword                                  => 'Azure$123',
    dbname                                      => 'AdventureWorks2012',
    nodes                                       => {
      Node['server2012r2a.pdx.puppetlabs.demo'] => Cloudshop::App['split'],
      Node['server2012r2b.syd.puppetlabs.demo'] => Cloudshop::Db['split'],
    },
  }
}
```
