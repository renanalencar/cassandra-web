# encoding: utf-8

$: << File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'cassandra-web'
  s.version       = '0.5.0'
  s.authors       = ['Bulat Shakirzyanov']
  s.email         = ['bulat.shakirzyanov@datastax.com']
  s.homepage      = 'https://github.com/avalanche123/cassandra-web'
  s.summary       = %q{A simple web ui for Apache Cassandra}
  s.description   = %q{Apache Cassandra web interface using Ruby, Event-machine, AngularJS, Server-Sent-Events and DataStax Ruby driver for Apache Cassandra}
  s.license       = 'MIT'
  s.files         = Dir['app/**/*.*', 'app.rb', 'README.md', 'bin/*']
  s.bindir        = 'bin'
  s.executables << 'cassandra-web'

  s.required_ruby_version = '>= 2.2.0'
  s.platform= Gem::Platform::RUBY

  s.add_runtime_dependency 'cassandra-driver', '~> 3.2.4'
  s.add_runtime_dependency 'thin',             '~> 1.7.2'
  s.add_runtime_dependency 'rack-cors',        '~> 1.1.1'
  s.add_runtime_dependency 'rack-parser',      '~> 0.7.0'
  s.add_runtime_dependency 'sinatra',          '~> 2.0.8'
  # compression disabled due to incompability with Ruby 2.2
  # s.add_runtime_dependency 'lz4-ruby',         '~> 0.3.3'

  s.add_development_dependency 'bundler', '~> 2.1.4'
  s.add_development_dependency 'rake', '~> 13.0.1'

end
