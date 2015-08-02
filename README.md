Vagrantで起動したVMに対して適用

```sh
bundle exec itamae ssh --vagrant -y nodes/gh-report.yml roles/gh-report.rb  --log-level debug
```

本番環境に対して適用

```sh
bundle exec itamae ssh -h XXX.XXX.XXX.XXX -u kitak -i ~/id_rsa -y nodes/gh-report.yml roles/gh-report.rb  --log-level debug
```
