# -*- ruby -*-

require "rubygems"
require "hoe"

Hoe.plugin :git
Hoe.plugin :gemspec
Hoe.plugin :travis
Hoe.plugins.delete :rubyforge

Hoe.spec "minitest-rails-shoulda" do
  developer "Robert Bousquet", "robert@robertbousquet.com"
  developer "Rafal Wrzochol",  "rafal@wrzochol.net"
  developer "Mike Moore",      "mike@blowmage.com"

  self.summary     = "Shoulda DSL and Matchers in minitest-rails"
  self.description = "Extenstion supporting the Shoulda DSL and Matchers in Rails tests using MiniTest"
  self.urls        = ["https://github.com/bousquet/minitest-rails-shoulda"]

  self.history_file = "CHANGELOG.rdoc"
  self.readme_file  = "README.rdoc"
  self.testlib      = :minitest

  dependency "minitest-rails",    "~> 0.1"
  dependency "minitest-matchers", ">= 1.2"
  dependency "shoulda-matchers",  "~> 1.2"
end

# vim: syntax=ruby
