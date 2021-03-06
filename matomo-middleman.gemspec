# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "matomo-middleman"
  s.version     = "0.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matthias Guenther"]
  s.email       = ["matze@wikimatze.de"]
  s.homepage    = "https://github.com/wikimatze/matomo-middleman"
  s.summary     = %q{Add tracking helper for matomo}
  s.description = %q{Add tracking code for matomo}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.license       = "MIT"

  s.extra_rdoc_files = ['README.md']

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency 'middleman-core', '>= 4.2'
end
