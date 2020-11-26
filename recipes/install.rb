execute 'enable epel repo' do
  command '/bin/amazon-linux-extras install epel'
end

yum_package 'openvpn' do
  action :install
end