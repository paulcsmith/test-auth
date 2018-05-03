# Load Lucky and the app (actions, models, etc.)
require "./src/app"

# You can add your own tasks here in the ./tasks folder
require "./tasks/**"

# Load migrations
require "./db/migrations/**"

# Load Lucky tasks (dev, routes, etc.)
require "lucky/tasks/**"

Habitat.raise_if_missing_settings!
LuckyCli::Runner.run
