# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ec2/version'

Gem::Specification.new do |spec|
  spec.name          = "ec2_amitools"
  spec.version       = EC2::AMITools::VERSION
  spec.authors       = ["Alexey Bobyrev"]
  spec.email         = ["alexey.bobyrev@gmail.com"]
  spec.license       = "Amazon Software License"

  spec.summary       = "ec2-ami-tools-#{EC2::AMITools::VERSION_TOOLS}"
  spec.description   = "#{spec.summary} by Amazon packed into a gem"
  spec.homepage      = "http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-up-ami-tools.html"

  if spec.respond_to?(:metadata=)
    spec.metadata = {
      "homepage_uri" => "http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/set-up-ami-tools.html",
      "source_code_uri" => "http://github.com/sfate/ec2_amitools",
    }
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "bin"
  spec.files         = `git ls-files bin lib etc *.md LICENSE`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin\/(?!setup|console).*$}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "etc"]

  spec.required_ruby_version     = ">= 2.0.0"
  spec.required_rubygems_version = ">= 2.1.11"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
