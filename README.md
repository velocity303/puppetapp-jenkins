A puppet class to perform App Orchestration with the tse_sqlserver and sqlwebapp modules in the TSE Demo Environment.

Single Node Setup:
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

Dual Node Setup: 
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

