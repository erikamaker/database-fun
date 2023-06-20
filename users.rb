require 'sqlite3'
require 'bcrypt'

# Connect to the SQLite database
db = SQLite3::Database.new('users.db')

# Create the "users" table if it doesn't exist
db.execute('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password_hash TEXT)')

# Method to retrieve a user by their username
def retrieve_user_by_username(db, username)
  user = db.execute('SELECT * FROM users WHERE username = ?', username).first
  if user
    puts "ID: #{user[0]}, Username: #{user[1]}"
  else
    puts "User '#{username}' not found."
  end
end

# Method to update a user's password
def update_password(db, username, new_password)
  password_hash = BCrypt::Password.create(new_password)
  db.execute('UPDATE users SET password_hash = ? WHERE username = ?', password_hash, username)
  puts "Password updated for user '#{username}'."
end

# Method to check if entered password matches the stored hashed password
def verify_password(db, username, entered_password)
  password_hash = db.execute('SELECT password_hash FROM users WHERE username = ?', username).first
  if password_hash
    password_hash = password_hash[0]
    if BCrypt::Password.new(password_hash) == entered_password
      puts "Password is correct for user '#{username}'."
    else
      puts "Incorrect password for user '#{username}'."
    end
  else
    puts "User '#{username}' not found."
  end
end

# Prompt the user to enter a username
print "Enter a username to retrieve: "
username = gets.chomp

# Retrieve the user by username
retrieve_user_by_username(db, username)

# Prompt the user to update the password
print "Enter a new password for user '#{username}': "
new_password = gets.chomp

# Update the user's password
update_password(db, username, new_password)

# Prompt the user to enter a password for verification
print "Enter the password for user '#{username}': "
entered_password = gets.chomp

# Check if entered password matches the stored hashed password
verify_password(db, username, entered_password)

# Close the database connection
db.close
