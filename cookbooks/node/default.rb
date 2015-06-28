include_recipe '../nodebrew/default.rb'

execute 'install node' do
  command '$HOME/.nodebrew/nodebrew install-binary stable && $HOME/.nodebrew/nodebrew use stable'
end
