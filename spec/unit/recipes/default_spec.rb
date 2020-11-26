#
# Cookbook:: openvpn_server
# Spec:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'openvpn_server::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'amazon', '2'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
