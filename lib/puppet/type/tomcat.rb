Puppet::Type.newtype :tomcat, :is_capability => true do
 newparam :name, :is_namevar => true
 newparam :host
 newparam :port
end
