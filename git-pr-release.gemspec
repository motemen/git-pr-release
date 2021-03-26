# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "git-pr-release"
  spec.version       = '1.4.0'
  spec.authors       = ["motemen"]
  spec.email         = ["motemen@gmail.com"]
  spec.summary       = 'Creates a release pull request'
  spec.description   = 'git-pr-release creates a pull request which summarizes feature branches that are to be released into production'
  spec.homepage      = 'https://github.com/x-motemen/git-pr-release'

  spec.files         = `git ls-files`.split($/)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')

  spec.add_dependency 'octokit'
  spec.add_dependency 'highline'
  spec.add_dependency 'colorize'
  spec.add_dependency 'diff-lcs'
  spec.add_dependency 'erb', '>= 2.2.2'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'timecop'
  spec.add_development_dependency 'webmock'

  spec.license = 'MIT'
end
