class ApplicationMailer < ActionMailer::Base
  default from: ENV['DEFAULT_SEND_FROM_ADDRESS']
  layout 'mailer'
end
