class Feedback::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def inject_gem_dependeny
    gem 'slim'
    gem 'simple_form'
    gem 'settingslogic'

    route %Q(mount Feedback::Engine => '/feedback', as: 'feedback_app')
  end

  def copy_additional_file
    copy_file 'setting.rb', 'app/models/setting.rb'
    copy_file 'settings.yml', 'config/settings.yml'
  end

end
