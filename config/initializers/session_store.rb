# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogue_session',
  :secret      => '6af2776f713d52591b5d8e9dfcf7218a2868a329dd3c6b255acd32a8cf622c56613579d045d179dabc23221b08d9abb5a33fdeec00e9660e811c0b58fb83ef32'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
