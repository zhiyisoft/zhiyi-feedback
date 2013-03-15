class Feedback::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  
  def inject_gem_dependeny
    gem 'slim'
    gem 'simple_form'

    route %Q(mount Feedback::Engine => '/feedback', as: 'feedback_app')
  end

  def copy_additional_file
    copy_file 'tree.jquery.js', 'app/assets/javascripts/tree.jquery.js'
    copy_file 'jqtree.css', 'app/assets/stylesheets/jqtree.css'
  end

end