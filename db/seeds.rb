# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


##Seed the client Table
Faker::Config.locale = 'fr'

insurer = %w(Axa Groupama Crédit-Argricole Maif MMA Allianz Assu-2000 )
nature = %w(évier-bouché, Panne-électrique, porte-bloquée )

def quotation_amount
  100 + rand(1400)
end

def final_amount(quotation_amount)
  multiplication_factor =  0.9 + rand * 0.4
  (quotation_amount * multiplication_factor).round(2)
end

  SECOND_IN_FIFTEEN_DAY = 1296000
def random_date
  Time.at (Time.now.to_f + rand * SECOND_IN_FIFTEEN_DAY)
  #Return a random date in the 15 followong day.
end


############
100.times {
  Client.create!( name: Faker::Name.name,
                  address: Faker::Address.street_address,
                  city: Faker::Address.city,
                  postal_code: Faker::Address.postcode,
                  phone_number: Faker::PhoneNumber.phone_number )
}


10.times {
  Artisan.create!( manager_name: Faker::Name.name,
                  manager_email: Faker::Internet.email,
                  address: Faker::Address.street_address,
                  city: Faker::Address.city,
                  postal_code: Faker::Address.postcode,
                  insurer: insurer.sample,
                  phone_number: Faker::PhoneNumber.phone_number,
                  compagny_name: Faker::Company.name
                  )
}
200.times {
  clients = Client.all
  artisans = Artisan.all
  qut_amount = quotation_amount
  fnl_amount = final_amount(qut_amount)
  Intervention.create(
                  nature: nature.sample,
                  client_id: clients.sample.id,
                  artisan_id: artisans.sample.id,
                  quotation_amount: qut_amount,
                  final_amount: fnl_amount,
                  asked_date: random_date,
                  scheduled_date: random_date )
}
