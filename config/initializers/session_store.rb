# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_scmine_session',
  :secret      => '7c7b0fed4f98a55f3a34ff00c905ff6ed91f963c8853f1a6805f50dc6264d400c5b0d986907b1ba6f41898fd3da9ef4c1fdb1f287fef06a272bbe0b4795c488d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
