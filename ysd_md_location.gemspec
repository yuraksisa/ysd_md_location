Gem::Specification.new do |s|
  s.name    = "ysd_md_location"
  s.version = "0.2.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-03-06"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.summary = "A DattaMapper-based model for location"
  s.homepage = "http://github.com/yuraksisa/ysd_md_location"
    
  s.add_runtime_dependency "data_mapper", "1.2.0"

  s.add_runtime_dependency "ysd_core_plugins"     # Aspects
  
end