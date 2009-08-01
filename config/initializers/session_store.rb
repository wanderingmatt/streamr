# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_streamr_session',
  :secret      => 'c574352ffc1026dec0d24d305cfd257c159b01398ee00711afbe5194c4b442c11a35e80ce51be16e3977671db65c9199b001e146f9f5a9e5b771e3ee391a559d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
