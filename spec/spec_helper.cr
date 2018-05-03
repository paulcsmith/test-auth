ENV["LUCKY_ENV"] = "test"
ENV["PORT"] = "5001"
require "spec"
require "lucky_flow"
require "../src/app"
require "./support/**"
require "../db/migrations/**"

# Add/modify files in spec/setup to start/configure programs or run hooks
#
# By default there are scripts for setting up and cleaning the databse,
# configuring LuckyFlow, starting the app server, etc.
require "./setup/**"

include Carbon::Expectations

Habitat.raise_if_missing_settings!