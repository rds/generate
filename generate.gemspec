Gem::Specification.new do |s|
  s.name             = "generate"
  s.summary          = "Rails 3 generators"
  s.description      = "A selection of Rails 3 generators. Useful to somebody, maybe."
  s.homepage         = "http://github.com/rds/generate"
  
  s.authors          = ["Richard Smith"]
  s.email            = "rich@maycontaincocoa.com"
  
  s.version          = "0.0.1"
  s.date             = "2010-03-01"
    
  s.files            = Dir['lib/**/*']
  s.extra_rdoc_files = %w( README.rdoc CHANGELOG LICENSE )
  
  s.has_rdoc         = false
end
