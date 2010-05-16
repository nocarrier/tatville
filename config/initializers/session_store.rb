# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tatville_session',
  :secret      => '98021598832a966b593f3d9a657185bf68f825f5132d43ed5d2f9a5e266ccf7719e7ec6204ae2ae2cc0d59b3ef4e6e891a1a3ad7963124a442b951ed0b93739f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
