# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

  # Action Mailer
Rails.application.configure do
  config.action_mailer.smtp_settings = :smtp
  config.action_mailer.smtp_settings = {
    address:               "smtp.gmail.com",
    port:                  587,
    domain:                "domain.of.sender.net",
    authentication:        "plain",
    user_name:             ENV['GMAIL_SMTP_USER'],
    password:              ENV['GMAIL_SMTP_PASSWORD'],
    enable_starttls_auto:  true
  }
end
