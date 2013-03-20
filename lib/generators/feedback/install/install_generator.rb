class Feedback::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def inject_gem_dependeny
    gem 'slim'
    gem 'simple_form'

    route %Q(mount Feedback::Engine => '/feedback', as: 'feedback_app')
  end

end
