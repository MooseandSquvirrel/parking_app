# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
	config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

    config.secret_key = '2583228cc75d5724a44b5db5c10dd117d640fadd3b62a26016afcbc73f1419c35bb974d1a35ee3cd38a4c1542cf77de5bbbe19c97a4f6bac181df7a170ea4b70'

    require 'devise/orm/active_record'

    config.case_insensitive_keys = [:email]

    config.skip_session_storage = [:http_auth]

    config.stretches = Rails.env.test? ? 1 : 11

    config.reconfirmable = true

    config.expire_all_remember_me_on_sign_out = true

    config.password_length = 6..128

    config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

    config.reset_password_within = 6.hours

    config.sign_out_via = :delete

    config.omniauth :marvin, ENV['API_UID'], ENV['API_SECRET']
end
