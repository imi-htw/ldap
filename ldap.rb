require 'rubygems'
require 'net/ldap'

# aus imi-maps
#ldap = LdapAuthentication.new("141.45.146.101", 389, params[:user_name], params[:password])

ldap = Net::LDAP.new
ldap.host = your_server_ip_address
ldap.port = 389
ldap.auth "joe_user", "opensesame"
if ldap.bind
  # authentication succeeded
else
  # authentication failed
end
