remote_file "/etc/yum.repos.d/mongodb-org-3.0.repo"
package 'mongodb-org'

service 'mongod' do
  action [:enable, :start]
end
