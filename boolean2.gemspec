# -*- encoding: utf-8 -*-

require File.dirname(__FILE__) + "/lib/boolean2"

Gem::Specification.new do |gem|
  gem.name          = "boolean2"
  gem.version       = Boolean2::VERSION
  gem.summary       = "A global Boolean2 constant that is an ancestor of true and false."
  gem.description   = "A global Boolean2 constant that is an ancestor of true and false. Useful for coercion libraries."
  gem.authors       = ["Jan Lelis"]
  gem.email         = "mail@janlelis.de"
  gem.homepage      = "https://github.com/janlelis/boolean2"
  gem.license       = "MIT"

  gem.files         = Dir['{**/}{.*,*}'].select{ |path| File.file?(path) && path !~ /^pkg/ }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.required_ruby_version = '~> 2.0'
end
