# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minitest-rails-shoulda/version"

Gem::Specification.new do |s|
  s.name        = "minitest-rails-shoulda"
  s.version     = MiniTest::Rails::Shoulda::VERSION
  s.authors     = ["Rafal Wrzochol"]
  s.email       = ["rafal@wrzochol.net"]
  s.homepage    = ""
  s.summary     = %q{Making shoulda-matchers available for minitest-rails}
  s.description = %q{Making shoulda-matchers available for minitest-rails}

  s.rubyforge_project = "minitest-rails-shoulda"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
#  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "minitest-rails"
  s.add_runtime_dependency "minitest-matchers"
  s.add_runtime_dependency "shoulda-matchers"
end
