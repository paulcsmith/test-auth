LuckyFlow.configure do
  settings.stop_retrying_after = 200.milliseconds
  settings.url_root = Lucky::RouteHelper.settings.domain
end
Spec.before_each { LuckyFlow.reset }
