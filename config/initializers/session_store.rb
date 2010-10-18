# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testBeatThatQuote_session',
  :secret      => '861269dd1b8c13b5a3616f6546b7bc587a762933d2145d6e90aa308b15069df064e768b02e35e50562878ee31e4800f16bb7056da09810abc42917215d3fbbf1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
