# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kyte_session',
  :secret      => 'ad4ebda3e3bfeff30a05276a2d2b207596d7172896d1665e96897447658fe436ac7ab42f8e49bf5d244caacf072da6870f3a6c04840939e46c8a6a9292e2d198'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
