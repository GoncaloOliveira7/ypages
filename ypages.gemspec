# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'ypages'
  s.version = '0.3.0'
  s.authors = ['goncalo']
  s.email = ['gapoliveira7@gmail.com']

  s.files = Dir.glob('lib/**/*', File::FNM_DOTMATCH)
  s.summary = 'summary'
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.6.0'
  s.bindir = 'exe'
  s.executables = ['ypages']
  s.require_paths = ['lib']

  s.add_dependency 'tty-prompt', '~> 0.23.1'
end
