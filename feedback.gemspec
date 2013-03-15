# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'feedback/version'

Gem::Specification.new do |gem|
  gem.name          = "feedback"
  gem.version       = Feedback::VERSION
  gem.authors       = ["YinChangXin"]
  gem.email         = ["ycxxww@gmail.com"]
  gem.description   = %q{反馈}
  gem.summary       = %q{反馈}
  gem.homepage      = "http://www.zhiyisoft.com"

  gem.files = Dir["{app,config,db,lib,public}/**/*"] + ["Rakefile", "README.md"]

  gem.add_dependency "rails"
  gem.add_dependency "simple_form"
  gem.add_dependency "slim"

end
