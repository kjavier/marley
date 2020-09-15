ContentfulRails.configure do |config|
  config.authenticate_webhooks = true
  config.webhooks_username = ENV.fetch('WEBHOOK_USERNAME') 
  config.webhooks_password = ENV.fetch('WEBHOOK_PASSWORD') 
  config.access_token = ENV.fetch('API_ACCESS_TOKEN')
  #config.preview_access_token = "your preview access token"
  #config.management_token = "your management access token"
  config.space = ENV.fetch('API_SPACE') 
  config.environment = ENV.fetch('API_ENVIRONMENT') 
  #config.contentful_options = "hash of options"
end
