name 'openvpn_server'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures openvpn_server'
long_description 'Installs/Configures openvpn_server'
version '0.1.0'
chef_version '>= 12' if respond_to?(:chef_version)

supports amazon

recipe 'openvpn_server::install', 'install openvpn server'
recipe 'openvpn_server::yum_repository', 'install openvpn server'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/openvpn_server/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/openvpn_server'
depends 'yum-epel'