lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-serverspec/version'

Gem::Specification.new do |gem|
  gem.name          = 'vagrant-serverspec-jenkins'
  gem.homepage      = 'https://github.com/support-capensis/vagrant-serverspec'
  gem.version       = VagrantPlugins::ServerSpec::VERSION
  gem.authors       = ['Support CAPENSIS']
  gem.email         = ['support@capensis.fr']
  gem.summary       = %q{A Vagrant plugin that executes serverspec and publish html report for Jenkins}
  gem.description   = "vagrant-serverspec is a Vagrant plugin that integrates serverspec into your workflow."
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'serverspec', '~> 2.7', '>= 2.7.0'
  gem.add_runtime_dependency 'winrm', '~> 1.1', '>= 1.1.0'
  gem.add_runtime_dependency 'os', '~> 0.9.6'
  gem.add_runtime_dependency 'rspec_html_formatter', '~> 0.3.1'
  #gem.add_runtime_dependency 'highline', '~> 1.6', '>= 1.6.20'

  gem.add_development_dependency 'bundler', '~> 1.6', '>= 1.6.2'
  gem.add_development_dependency 'rake', '~> 10.3', '>= 10.3.2'
end
