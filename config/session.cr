require "./server"

Lucky::Session::Store.configure do
  settings.key = "test_project"
  settings.secret = Lucky::Server.settings.secret_key_base
end
