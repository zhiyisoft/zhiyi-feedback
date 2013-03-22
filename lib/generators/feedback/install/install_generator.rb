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

  def inject_email_setting
    ['development','production','test'].each do |item|
      inject_into_file "config/environments/#{item}.rb", after: "configure do\n" do <<-'RUBY'
      config.action_mailer.delivery_method = :smtp
      config.action_mailer.smtp_settings = {
        :address              => Setting.smtp.address,
        :port                 => Setting.smtp.port,
        :user_name            => Setting.smtp.user_name,
        :password             => Setting.smtp.password,
        :authentication       => 'plain',
        :enable_starttls_auto => true
      }
    RUBY
      end
    end
  end
end
