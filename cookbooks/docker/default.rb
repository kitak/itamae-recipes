execute 'yum update for install docker' do
  command 'yum update -y'
  not_if 'test -e /usr/bin/docker'
end

execute 'install docker' do
  command 'curl -O -sSL https://get.docker.com/rpm/1.7.0/centos-6/RPMS/x86_64/docker-engine-1.7.0-1.el6.x86_64.rpm && yum localinstall -y --nogpgcheck docker-engine-1.7.0-1.el6.x86_64.rpm && rm docker-engine-1.7.0-1.el6.x86_64.rpm'
  not_if 'test -e /usr/bin/docker'
end
