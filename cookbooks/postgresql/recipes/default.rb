#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]', :immediately
end

execute 'postgresql-init' do
	command 'postgresql-set-up initdb'
	action :nothing
end

service 'postgresql-service' do
	service_name 'postgresql'
	action [:enable, :start]
end
