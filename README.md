###Puppet Jenkins

####A puppet module to perform App Orchestration with Apache and Tomcat using sample Jenkins war file

This module will install and setup an Tomcat Middleware instance with the Jenkins web app and serve that to an Apache Webserver node.

#####Dual Node Setup:

```puppet
site {
  jenkins { 'split':
    nodes                                  => {
      Node['centos7a.pdx.puppetlabs.demo'] => Jenkins::App['split'],
      Node['centos7b.syd.puppetlabs.demo'] => Jenkins::Web['split'],
    }
  }
}
```
