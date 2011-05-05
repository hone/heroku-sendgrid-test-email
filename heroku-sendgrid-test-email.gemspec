# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "heroku-sendgrid-test-email/version"

Gem::Specification.new do |s|
  s.name        = "heroku-sendgrid-test-email"
  s.version     = Heroku::Command::Sendgrid::TestEmail::VERSION
  s.authors     = ["Terence Lee"]
  s.email       = ["hone02@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Heroku plugin to test sendgrid addon}
  s.description = %q{Heroku plugin to test sendgrid addon}

  s.rubyforge_project = "heroku-sendgrid-test-email"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "heroku", "~> 2.0.0"
  s.add_development_dependency "rake"
end
