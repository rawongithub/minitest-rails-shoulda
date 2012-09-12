# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-rails-shoulda"
  s.version = "0.1.0.20120911213208"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robert Bousquet", "Rafal Wrzochol", "Mike Moore"]
  s.date = "2012-09-12"
  s.description = "Extenstion supporting the Shoulda DSL and Matchers in Rails tests using MiniTest"
  s.email = ["robert@robertbousquet.com", "rafal@wrzochol.net", "mike@blowmage.com"]
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "License.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["CHANGELOG.rdoc", "License.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/minitest-rails-shoulda.rb", "lib/minitest/rails/shoulda.rb", "lib/minitest/rails/shoulda/matchers.rb", "minitest-rails-shoulda.gemspec", "test/rails_helper.rb", "test/test_matchers.rb", ".gemtest"]
  s.homepage = "https://github.com/bousquet/minitest-rails-shoulda"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "minitest-rails-shoulda"
  s.rubygems_version = "1.8.24"
  s.summary = "Shoulda DSL and Matchers in minitest-rails"
  s.test_files = ["test/test_matchers.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest-rails>, ["~> 0.1"])
      s.add_runtime_dependency(%q<minitest-matchers>, [">= 1.2"])
      s.add_runtime_dependency(%q<shoulda-matchers>, ["~> 1.2"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_development_dependency(%q<hoe>, ["~> 3.0"])
    else
      s.add_dependency(%q<minitest-rails>, ["~> 0.1"])
      s.add_dependency(%q<minitest-matchers>, [">= 1.2"])
      s.add_dependency(%q<shoulda-matchers>, ["~> 1.2"])
      s.add_dependency(%q<rdoc>, ["~> 3.10"])
      s.add_dependency(%q<hoe>, ["~> 3.0"])
    end
  else
    s.add_dependency(%q<minitest-rails>, ["~> 0.1"])
    s.add_dependency(%q<minitest-matchers>, [">= 1.2"])
    s.add_dependency(%q<shoulda-matchers>, ["~> 1.2"])
    s.add_dependency(%q<rdoc>, ["~> 3.10"])
    s.add_dependency(%q<hoe>, ["~> 3.0"])
  end
end
