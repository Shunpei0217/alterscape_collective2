Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    user_name: 'iyasiken@gmail.com',
    password: 'ghpcflotcvnocmlq'
  }

  #config.action_mailer.delivery_method = :smtp
  #config.action_mailer.raise_delivery_errors = true
  #config.action_mailer.smtp_settings = {
  #:enable_starttls_auto => true,
  #:address => 'smtp.gmail.com', #これ
  #:port => '587', #これ
  #:domain => 'smtp.gmail.com',
  #:authentication => 'plain',
  #:user_name => 'iyasiken@gmail.com', #これ
  #:password => 'vsigolwtrlqulvul' #これが必須
#}

end
