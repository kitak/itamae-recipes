execute "enable epel" do
  command [
    "wget http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm",
    "rpm -ivh epel-release-6-8.noarch.rpm",
  ].join(" && ")
  not_if 'yum repolist enabled -C | grep epel'
end

template "/etc/yum.repos.d/epel.repo" do
  mode "644"
  owner "root"
  group "root"
end

