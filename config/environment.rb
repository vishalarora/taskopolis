require_relative 'application'
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => ENV['DEFAULT_MAILER_DOMAIN'],
  :address => ENV['DEFAULT_SEND_FROM_ADDRESS'],
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}