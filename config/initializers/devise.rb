# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.mailer_sender = 'Don Wydens <aystarz.sales@gmail.com>'
  require 'devise/orm/active_record'

  # config.omniauth :facebook, "KEY", "SECRET"
  # config.omniauth :twitter, "o7yYxBPZ8Zn9ft5lsrQfyZSmz", "yzixlHKPsZIFVpA993yD27per9YjegaIFomHlkmXv9sI46ppwH"
  # config.omniauth :linked_in, "KEY", "SECRET"



  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..128
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
end
