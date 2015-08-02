include_recipe "../cookbooks/ruby/default.rb"
include_recipe "../cookbooks/mongodb/default.rb"
include_recipe "../cookbooks/fluentd/default.rb"

[
  'fluentd',
  'fluent-plugin-mongo',
  'fluent-plugin-github-activities',
  'bson_ext'
].each do |name|
  gem_package name do
    gem_binary '/usr/local/rbenv/shims/gem'
  end
end
