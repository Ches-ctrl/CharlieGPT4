puts "Creating a user..."

User.create(email: ENV['CHARLIE_EMAIL'], password: ENV['CHARLIE_PASSWORD'])
puts "Created user:  #{User.first}"

# , admin: true
# TODO: Add admin user

# puts "Created 1 user called Charlie"
