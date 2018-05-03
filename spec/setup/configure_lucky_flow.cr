LuckyFlow.configure do
  settings.stop_retrying_after = 200.milliseconds
  settings.url_root = "http://#{Lucky::ServerSettings.host}:#{Lucky::ServerSettings.port}"
end
Spec.before_each { LuckyFlow.reset }
