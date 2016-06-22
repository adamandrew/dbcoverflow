Gem::Specification.new do |s|
  s.name        = 'dbcoverflow'
  s.version     = '0.0.0'
  s.executables << 'dbcoverflow'
  s.add_runtime_dependency "httparty", ["= 0.13.7"]
  s.date        = '2016-06-21'
  s.summary     = "DBC Overflow"
  s.description = "A gem which can post new question to my Stack Overflow clone deployed on Heroku."
  s.authors     = ["Andrew Lee"]
  s.email       = 'adam7924adam@gmail.com'
  s.files       = ["lib/dbcoverflow.rb"]
  s.homepage    =
    'http://rubygems.org/gems/dbcoverflow'
  s.license       = 'MIT'
end