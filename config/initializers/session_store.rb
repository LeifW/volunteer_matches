# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_student_matches_session',
  :secret      => '15392461d021ad9fb88068cfe4299bc1b56242f567edc03355ff6049a9997b13dca0dd5d6db55c8fc87bc5dc42605ba095176e2486ad8f75e111d1bbf6348a78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
