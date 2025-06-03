# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => ENV['MAILERSEND_SMTP_SERVER'],
  :port => ENV['MAILERSEND_SMTP_PORT'],
  :authentication => :plain,
  :user_name => ENV['MAILERSEND_SMTP_LOGIN'],
  :password => ENV['MAILERSEND_SMTP_PASSWORD'],
  :domain => ENV['MAILERSEND_DOMAIN'],
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options = { host: ENV['URL'] }