hostname = node['hostname']
file 'motdfile' do
	path '/etc/motd/'
	content "Hostname is this : #{hostname}"
end
