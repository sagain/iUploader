# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_photo_upload_service_session',
  :secret      => 'd708300400d02b6ba26e26bdc268b5bda05207c85e944a732d5848247030e84f62c5d7785589423460f569c9d525ca7e11fdbdd6fe81135c6fa386ac3a372a4f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
