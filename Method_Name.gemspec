# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "Method_Name/version"

Gem::Specification.new do |s|
  s.name        = "Method_Name"
  s.version     = Method_Name::VERSION
  s.authors     = ["da99"]
  s.email       = ["i-hate-spam-45671204@mailinator.com"]
  s.homepage    = "https://github.com/da99/Method_Name"
  s.summary     = %q{Extract method names from strings.}
  s.description = %q{
    A Ruby gem to turn strings into method names for 
    your metaprogramming needs.
  }

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'bacon'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'Bacon_Colored'
  s.add_development_dependency 'pry'
  
  # Specify any dependencies here; for example:
  # s.add_runtime_dependency 'rest-client'
end
