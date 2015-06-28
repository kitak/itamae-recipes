execute 'install nodebrew' do
  command 'curl -L git.io/nodebrew | perl - setup'
  not_if 'test -d $HOME/.nodebrew'
end
