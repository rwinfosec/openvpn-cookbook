module OpenVPNInstallerHelpers
  include Chef::Mixin::ShellOut

  def supported
    {
      amazon: %w[2018.03 2]
    }
  end

  def supported_platform_version
    current_version = Chef::Version.new(node['platform_version'].to_f)
    supported[node['platform'].to_sym].each do |version|
      required_version = Chef::Version.new(version.to_f)
      next unless required_version.major == current_version.major
      return true if required_version <= current_version
    end
  end

  def supported_platform
    supported.keys.include?(node['platform'].to_sym) &&
      supported_platform_version
  end
end

Chef::Recipe.include OpenVPNInstallerHelpers
Chef::Resource.include OpenVPNInstallerHelpers
Chef::Provider.include OpenVPNInstallerHelpers