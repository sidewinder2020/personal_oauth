Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["42dcf08162e1aa61c420"], ENV["93b64a100988a7582b9b4aa1de59a6b766a2338b"]
end
