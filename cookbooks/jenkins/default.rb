execute "import key for jenkins" do
  command "wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo && rpm --import  https://jenkins-ci.org/redhat/jenkins-ci.org.key"
  not_if 'test -e /etc/yum.repos.d/jenkins.repo'
end

package "jenkins"
