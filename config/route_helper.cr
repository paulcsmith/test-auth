# This is used when generating URLs for your application
Lucky::RouteHelper.configure do
  if Lucky::Env.production?
    # Example: https://my_app.com
    settings.base_uri = ENV.fetch("APP_DOMAIN")
  else
    # Set domain to the default host/port in development/test
    settings.base_uri = "http://#{Lucky::ServerSettings.host}:#{Lucky::ServerSettings.port}"
    # TODO: Use Sentry::BROWSERSYNC_PORT in dev so it takes you to the browsersync port
  end
end
