# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sn_session',
  :secret      => 'de5d3e3af35edc31db67c12fa020555656f3a3368f1715536631dfc89cc9c66948999af0c3bab35d3ac812b9ad44a8a89cb71f8cbc8bc4b85a63950bb0a911d6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
