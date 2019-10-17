# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
  Rails.application.config.assets.precompile += %w(cover
                                                   user
                                                   valeria
                                                   teaser
                                                   models/modelo_01_01
                                                   models/modelo_01_02
                                                   models/modelo_01_03
                                                   models/modelo_02_01
                                                   models/modelo_02_02
                                                   models/modelo_02_03
                                                   models/modelo_03_01
                                                   models/modelo_03_02
                                                   models/modelo_03_03
                                                   medias/facebook
                                                   medias/instagram
                                                   medias/whatsapp
                                                   schedule)
