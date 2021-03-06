# coding: utf-8

lib = File.expand_path('lib', File.dirname(__FILE__))
$LOAD_PATH.push(lib) unless $LOAD_PATH.include?(lib)

require 'stoplight/version'

Gem::Specification.new do |gem|
  gem.name = 'stoplight'
  gem.version = Stoplight::VERSION.to_s
  gem.summary = 'Traffic control for code.'
  gem.description = 'An implementation of the circuit breaker pattern.'
  gem.homepage = 'https://github.com/orgsync/stoplight'
  gem.license = 'MIT'

  gem.required_ruby_version = '>= 1.9.3'

  {
    'Cameron Desautels' => 'camdez@gmail.com',
    'Taylor Fausak' => 'taylor@fausak.me',
    'Justin Steffy' => 'steffy@orgsync.com'
  }.tap do |hash|
    gem.authors = hash.keys
    gem.email = hash.values
  end

  gem.files = %w(CHANGELOG.md CONTRIBUTING.md LICENSE.md README.md) +
    Dir.glob(File.join('lib', '**', '*.rb'))
  gem.test_files = Dir.glob(File.join('spec', '**', '*.rb'))

  {
    'benchmark-ips' => '~> 2.1',
    'coveralls' => '~> 0.7',
    'fakeredis' => '~> 0.5',
    'hipchat' => '~> 1.4',
    'rake' => '~> 10.4',
    'redis' => '~> 3.2',
    'rspec' => '~> 3.2',
    'rubocop' => '~> 0.29',
    'timecop' => '~> 0.7',
    'yard' => '~> 0.8'
  }.each do |name, version|
    gem.add_development_dependency name, version
  end
end
