package 'git'
package 'gibo'
package 'hub'
package 'vim'
package 'go'
package 'zsh'
package 'tree'
package 'peco'
package 'pt'
package 'caskroom/cask/brew-cask'

execute 'install virtualbox' do
  command 'brew cask install virtualbox'
  not_if 'ls /opt/homebrew-cask/Caskroom | grep virtualbox'
end

execute 'install vagrant' do
  command 'brew cask install vagrant'
  not_if 'ls /opt/homebrew-cask/Caskroom | grep vagrant'
end
