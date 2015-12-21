Puppet::Type.newtype :mssql, :is_capability => true do
 newparam :name, :is_namevar => true
 newparam :dbinstance
 newparam :dbuser
 newparam :dbname
 newparam :dbserver
 newparam :dbpassword
end
