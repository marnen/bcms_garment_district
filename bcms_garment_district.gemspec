$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bcms_garment_district/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bcms_garment_district"
  s.version     = BcmsGarmentDistrict::VERSION
  s.authors     = ["Marnen Laibow-Koser"]
  s.email       = ["marnen@marnen.org"]
  s.homepage    = "https://github.com/marnen/bcms_garment_district"
  description = 'Allow Markdown and Textile to be used for BrowserCMS content.'
  s.summary     = description
  s.description = description

  s.files = Dir["{app,config,db,lib}/**/*"] + ["GPL.txt", "LICENSE.txt", "COPYRIGHT.txt", "Rakefile", "README.md"]
    s.files -= Dir['lib/tasks/module_tasks.rake']
  s.test_files = Dir["test/**/*"]

  s.add_dependency "browsercms", "~> 3.5.6"
  s.add_dependency 'coffee-rails'
  s.add_dependency 'maruku'

  [
    'sqlite3',
    'capybara-firebug',
    'capybara-webkit',
    'guard-cucumber',
    'cucumber-rails',
    'database_cleaner',
    'debugger',
    'factory_girl_rails',
    'ffaker',
    'launchy',
    'guard-rspec',
    'rspec-rails',
    ['rb-fsevent', '~> 0.9.1'],
    ['shoulda-matchers', '~> 2.0.0']
  ].each {|gem| s.add_development_dependency *gem }
end
