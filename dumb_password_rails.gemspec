# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dumb_password_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "dumb_password_rails"
  spec.version       = DumbPasswordRails::VERSION
  spec.authors       = ["Okeke Arinze"]
  spec.email         = ["trent9002@gmail.com"]

  spec.summary       = %q{An active model Validation gem that helps prevent users using vulnerable passwords}
  spec.description   = %q{A password validator for Rails 3+ apps. Ensures that your users don't use passwords included in the top 10,000 worst passwords to protect their accounts from brute force attacks.  }
  spec.homepage      = "https://www.github.com/arinzeokeke/dumb_password_rails"
  spec.license       = "MIT"

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
  s.add_development_dependency('rubysl', '~> 2.0') if RUBY_ENGINE == 'rbx'

end
