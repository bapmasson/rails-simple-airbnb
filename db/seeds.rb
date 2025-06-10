# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

# 2. Create the instances 🏗️
puts "Creating flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Cosy Flat in Marseille City Center',
  address: '10 rue des Trois Frères Barthélémy, 13006 Marseille',
  description: 'Small cosy flat in one the most famous part of Marseille : Cours Julien - La Plaine.',
  price_per_night: 90,
  number_of_guests: 2
)
Flat.create!(
  name: 'Great Cottage House in Ardeche',
  address: 'Mas de Soubise, 07230 Lablachère',
  description: 'Great modern house with an old charm to it. Perfect for your family or friends vacation with its immense garden , a barbecue place with a great swimming pool, and the proximity of nature',
  price_per_night: 150,
  number_of_guests: 10
)
Flat.create!(
  name: 'Newly renovated Flat near les Calanques',
  address: '7 rue Marie Balajat, 13009 Marseille',
  description: 'Very Light and cosy appartment, recently renovated, close to the sea and the Calanques National Park. Enjoy the surroundings of Marseille easily.',
  price_per_night: 70,
  number_of_guests: 5
)




# 3. Display a message 🎉
puts "Finished! Created #{Flat.count} flats."
