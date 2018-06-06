#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install HTTPD package
#

if node['platform_family'] == "rhel"
	package = "httpd"
elsif node['plaftorm_family'] == "debian"
	package = "apache2"
end

package 'apache2' do
	package_name package
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:enable, :start]
end

