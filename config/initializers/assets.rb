# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js.erb, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

#  app/assets
Rails.application.config.assets.precompile += %w(application.css application.js
                                                  admins_backoffice.css admins_backoffice.js
                                                  users_backoffice.css users_backoffice.js
                                                  login.css login.js)

# lib/assets
Rails.application.config.assets.precompile += %w(custom.css custom.js)

# vendor/assets
Rails.application.config.assets.precompile += %w(jquery-2.2.3/dist/jquery.js)


