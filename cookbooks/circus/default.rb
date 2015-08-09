package 'python-setuptools'
package 'python-devel'

execute 'install cerfifi' do
  command 'easy_install certifi'
end

execute 'install circus' do
  command 'easy_install circus'
end
