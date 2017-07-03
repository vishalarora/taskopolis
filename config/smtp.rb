SMTP_SETTINGS = {
  address: ENV.fetch("SMTP_ADDRESS"), # example: "smtp.sendgrid.net"
  authentication: :plain,
  domain: ENV.fetch("DEFAULT_MAILER_DOMAIN"), # example: "heroku.com"
  enable_starttls_auto: true,
  password: ENV.fetch("SENDGRID_PASSWORD"),
  port: "587",
  user_name: ENV.fetch("SENDGRID_USERNAME")
}