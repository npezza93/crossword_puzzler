# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'word_searcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'word_searcher'
  spec.version       = WordSearcher::VERSION
  spec.authors       = ['npezza93']
  spec.email         = ['npezza93@gmail.com']

  spec.summary       = 'Word Search Generator and Solver'
  spec.description   = 'Makes word searches and solves them'
  spec.homepage      = 'https://www.github.com'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise(
      'RubyGems 2.0 or newer is required to protect against public gem pushes.'
    )
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '>= 5.0'
  spec.add_dependency 'activemodel', '>= 5.0'
  spec.add_dependency 'highline'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry'
end
