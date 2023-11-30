# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating a user..."

User.create(email: ENV['CHARLIE_EMAIL'], password: ENV['CHARLIE_PASSWORD'], first_name: "Charlie", last_name: "Cheesman")
puts "Created user:  #{User.first.first_name}"

# , admin: true
# TODO: Add admin user

# puts "Created 1 user called Charlie"
