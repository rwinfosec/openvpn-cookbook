# InSpec test for recipe openvpn_server::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/


describe file('/etc/yum.repos.d/epel.repo') do
  it { should exist }
end

describe package('openvpn') do
  it { should be_installed }
end

