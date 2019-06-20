# -*- encoding: utf-8 -*-
# stub: cucumber-rails 1.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber-rails".freeze
  s.version = "1.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u{f8}y".freeze, "Dennis Bl\u{f6}te".freeze, "Rob Holland".freeze]
  s.date = "2019-04-18"
  s.description = "Cucumber Generator and Runtime for Rails".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.homepage = "http://cukes.info".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.0".freeze)
  s.rubygems_version = "2.7.9".freeze
  s.summary = "cucumber-rails-1.7.0".freeze

  s.installed_by_version = "2.7.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capybara>.freeze, [">= 2.3.0", "< 4"])
      s.add_runtime_dependency(%q<cucumber>.freeze, [">= 3.0.2", "< 4"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_runtime_dependency(%q<railties>.freeze, [">= 4.2", "< 7"])
      s.add_runtime_dependency(%q<mime-types>.freeze, [">= 1.17", "< 4"])
      s.add_development_dependency(%q<ammeter>.freeze, [">= 1.0.0", "!= 1.1.3"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0.5.1"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.14.2"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 1.3.5"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.66.0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 10.3"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_development_dependency(%q<rails>.freeze, [">= 4.2", "< 7"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.13"])
      s.add_development_dependency(%q<rdiscount>.freeze, [">= 2.0.7"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 3.4"])
      s.add_development_dependency(%q<yard>.freeze, [">= 0.8.7"])
    else
      s.add_dependency(%q<capybara>.freeze, [">= 2.3.0", "< 4"])
      s.add_dependency(%q<cucumber>.freeze, [">= 3.0.2", "< 4"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
      s.add_dependency(%q<railties>.freeze, [">= 4.2", "< 7"])
      s.add_dependency(%q<mime-types>.freeze, [">= 1.17", "< 4"])
      s.add_dependency(%q<ammeter>.freeze, [">= 1.0.0", "!= 1.1.3"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0.5.1"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.14.2"])
      s.add_dependency(%q<bundler>.freeze, [">= 1.3.5"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.66.0"])
      s.add_dependency(%q<rake>.freeze, [">= 10.3"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
      s.add_dependency(%q<rails>.freeze, [">= 4.2", "< 7"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.13"])
      s.add_dependency(%q<rdiscount>.freeze, [">= 2.0.7"])
      s.add_dependency(%q<rdoc>.freeze, [">= 3.4"])
      s.add_dependency(%q<yard>.freeze, [">= 0.8.7"])
    end
  else
    s.add_dependency(%q<capybara>.freeze, [">= 2.3.0", "< 4"])
    s.add_dependency(%q<cucumber>.freeze, [">= 3.0.2", "< 4"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8"])
    s.add_dependency(%q<railties>.freeze, [">= 4.2", "< 7"])
    s.add_dependency(%q<mime-types>.freeze, [">= 1.17", "< 4"])
    s.add_dependency(%q<ammeter>.freeze, [">= 1.0.0", "!= 1.1.3"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0.5.1"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.14.2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.3.5"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.66.0"])
    s.add_dependency(%q<rake>.freeze, [">= 10.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5"])
    s.add_dependency(%q<rails>.freeze, [">= 4.2", "< 7"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.13"])
    s.add_dependency(%q<rdiscount>.freeze, [">= 2.0.7"])
    s.add_dependency(%q<rdoc>.freeze, [">= 3.4"])
    s.add_dependency(%q<yard>.freeze, [">= 0.8.7"])
  end
end
