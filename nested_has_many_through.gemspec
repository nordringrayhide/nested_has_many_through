# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nested_has_many_through/version"

Gem::Specification.new do |s|
  s.name        = "nested_has_many_through"
  s.version     = NestedHasManyThrough::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ian White"]
  s.email       = ["ian.w.white@gmail.com"]
  s.homepage    = "http://twitter.com/i2w"
  s.summary     = %q{Rails gem that allows has_many :through to go through other has_many :throughs}
  s.description = %q{This plugin makes it possible to define has_many :through relationships that
  go through other has_many :through relationships, possibly through an arbitrarily deep hierarchy.
  This allows associations across any number of tables to be constructed, without having to resort to
  find_by_sql (which isn't a suitable solution if you need to do eager loading through :include as well).}

  s.rubyforge_project = "nested_has_many_through"

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.5.0"
  s.add_development_dependency "yard"
  s.add_development_dependency "sqlite3-ruby"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

