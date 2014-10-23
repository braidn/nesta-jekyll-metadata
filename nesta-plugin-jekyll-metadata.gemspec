# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nesta-plugin-jekyll-metadata/version'

Gem::Specification.new do |spec|
  spec.name          = "nesta-plugin-jekyll-metadata"
  spec.version       = Nesta::Plugin::Jekyll::Metadata::VERSION
  spec.authors       = ["Braden"]
  spec.email         = ["me@braidn.com"]
  spec.homepage      = ""
  spec.summary       = %q{Allow Author To Use Jekyll Style Frontmatter/Metadata}
  spec.description   = <<-DES
    Plugin for using blog posts written for Jekyll or with a Jekyll style editor
    where the frontmatter is a little different from what is expected in Nesta.
    This style of frontmatter is encapsulated with dashes at both the first and
    last line. This plugin will allow a writer to simply move their content over
    to Nesta without having to modify each post.
  DES

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nesta", ">= 0.9.12"
end
