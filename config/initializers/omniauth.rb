
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV["YOUR_CONSUMER_API_KEY"], ENV["YOUR_CONSUMER_API_SECRET"]
end
