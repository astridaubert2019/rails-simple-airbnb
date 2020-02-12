puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

flat_1 = {
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

flat_2 = {
  name: 'Stylish House Close to River Thames',
  address: '5 Queensmill Road London SW6 6JP',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 65,
  number_of_guests: 2
}

flat_3 = {
  name: 'St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London N1C 4QP',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 110,
  number_of_guests: 2
}


[ flat_1, flat_2, flat_3 ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
