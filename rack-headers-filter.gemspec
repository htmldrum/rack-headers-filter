# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "rack-headers-filter"
  spec.version       = '0.0.1'
  spec.authors       = ["htmldrum"]
  spec.email         = ["htmldrum@tutanota.com"]

  spec.summary       = %q{Removes sensitive untrusted headers from the request}
  spec.description   = %q{
    The goal of this gem is to avoid depending on potentially forgeable
    headers down the line by configuring the deploy target properly.

    Forks https://github.com/pusher/rack-headers_filter to allow more configuration
    options when initializing the headers. Personally disagree with the restrictive
    list of headers in this component which is used here in a more general purpose
    way
  }
  spec.homepage      = "https://github.com/htmldrum/rack-headers-filter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rack", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rack-test"
end
