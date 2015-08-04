package 'mysql-server'
package 'mysql-devel'

service 'mysqld' do
  action [:start, :enable]
end
