# This is used when generating URLs for your application
Lucky::RouteHelper.configure do
  if Lucky::Env.production?
    # Example: https://my_app.com
    settings.domain = ENV.fetch("APP_DOMAIN")
  else
    # Set domain to the default host/port in development/test
    settings.domain = "http://#{Lucky::ServerSettings.host}:#{Lucky::ServerSettings.port}"
  end
end
