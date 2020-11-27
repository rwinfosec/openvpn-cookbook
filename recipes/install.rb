execute 'enable epel repo' do
  command '/bin/amazon-linux-extras install epel'
end

yum_package 'openvpn' do
  action :install
  version node.default['openvpn']['version']
end

template '/etc/openvpn/server.conf' do
  source 'config/server.erb'
  variables(maxClients: node.default['openvpn']['conf']['maxClients'],
            cipher: node.default['openvpn']['conf']['cipher'])
end

sysctl 'ipv4 forwarding' do
  key 'net.ipv4.ip_forward'
  value 1
end