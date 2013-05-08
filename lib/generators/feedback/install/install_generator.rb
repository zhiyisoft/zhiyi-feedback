class Feedback::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  def inject_gem_dependeny
    gem 'slim'
    gem 'simple_form'
    gem 'settingslogic'

    route %Q(mount Feedback::Engine => '/feedback', as: 'feedback_app')
  end

  def copy_additional_file
    copy_file 'html2canvas.js', 'app/assets/javascripts/html2canvas.js'
    copy_file 'send_feedback_info.html.erb', 'app/views/email/send_feedback_info.html.erb'
  end

  def inject_css_and_js
    inject_into_file 'app/assets/javascripts/application.js', after: "//= require jquery_ujs\n" do <<-'RUBY'
//= require html2canvas
    RUBY
    end
  end

end
