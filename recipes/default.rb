#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

#::Chef::Resource.send(:include, General::InstallChecks)
Chef::Recipe.send(:include, General::InstallChecks)

# Platform family - like rhel
puts node['platform_family']

# Platform of the platform family - like oracle (rhel, but oracle linux)
puts node['platform']

# hostname
puts node['hostname']
puts node[:hostname]

# test if a file exists
if File.exists?('/etc/passwd') 
  puts '/etc/passwd exists'
end

# test if a file does not exist
if !File.exists?('/etc/xpasswd') 
  puts '/etc/xpasswd does not exist'
end

#if already_installed ('/etc/passwd', 'it is already installed')
if already_installed ('/etc/passwd')

  puts 'checked if already installed'

end

#not_if do ::File.exists?('/etc/xpasswd')
#  puts '/etc/xpasswd does not exist'
#end