# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "fluent-plugin-twitter"
  s.version     = "0.5.4"
  s.authors     = ["Kentaro Yoshida"]
  s.email       = ["y.ken.studio@gmail.com"]
  s.homepage    = "https://github.com/y-ken/fluent-plugin-twitter"
  s.summary     = %q{Fluentd Input/Output plugin to collect/process tweets with Twitter Streaming API.}
  s.license     = "Apache-2.0"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit", ">= 3.1.0"
  s.add_development_dependency "appraisal"

  s.add_runtime_dependency "fluentd", [">= 0.10.46", "< 2"]
  s.add_runtime_dependency "twitter", "~> 5.0"
  s.add_runtime_dependency "string-scrub", [">= 0.0.3", "<= 0.0.5"]
end
