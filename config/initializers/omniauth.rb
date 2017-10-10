Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, "42dcf08162e1aa61c420", "cacb1217bafa0fa839730f923a918ce904d4f8f3"
end
