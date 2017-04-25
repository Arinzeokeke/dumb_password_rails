# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dumb_password_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "dumb_password_rails"
  spec.version       = DumbPasswordRails::VERSION
  spec.authors       = ["Okeke Arinze"]
  spec.email         = ["trent9002@gmail.com"]

  spec.summary       = %q{Prevent your users from using common passwords. Help them protect themselves}
  spec.description   = %q{Prevent your users from using common passwords. Help them protect themselves}
  spec.homepage      = "https://www.github.com/arinzeokeke/dumb_password_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = " Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "activemodel", ">= 0"

end
