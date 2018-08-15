# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
puts "Creating Clients"
Client.create(clientID: "120", name: "Lawyers group", address: "Losersville")
Client.create(clientID: "800", name: "Word Stranglers", address: "Wild West")
Client.create(clientID: "4", name: "Semantics", address: "A dry place")




puts "Creating Legal Cases"
LegalCase.create(caseID: "4000", isActive: "true", country: "America", caseID: "Bad dog vs Good dog")
LegalCase.create(caseID: "8928", isActive: "true", country: "US", caseID: "Im suing youre cuz youre a jerk")
LegalCase.create(caseID: "00000", isActive: "true", country: "USA", caseID: "Divorce.txt")

=end

def seed_users
  user_id = 0
  10.times do
    User.create(
      name: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id = user_id + 1
  end
end

def seed_clients
  clientID = 0
  10.times do
    Client.create(
    clientID: Faker::Number.number(5),
    name: Faker::Company.name,
    address: Faker::Address.street_name
  )
  clientID = clientID + 1
  end
end



def seed_legal_cases
  caseID = 0
  10.times do
    LegalCase.create(
    caseID: Faker::Number.number(3),
    name: Faker::Name.first_name,
    country: Faker::Address.country,
    isActive: true
  )
  caseID = caseID + 1
  end
end



def seed_associations
  5.times do
  client = (Client.create(
  :clientID [Faker::Number.number(5)],
  :name  [Faker::Company.name],
  :address  [Faker::Address.street_name] ))

  LegalCase.create(
  :name [Faker::Name.first_name],
  :country [Faker::Address.country],
  :client [client]
)
  end
end

seed_users
seed_clients
seed_legal_cases


=begin

def seed_associations
  5.times do
  client = Client.new
  client.clientID = Faker::Number.number(5)
  client.name = Faker::Company.name
  client.address = Faker::Address.street_name
  client.save
  legalcase = LegalCase.new
  legalcase.name = Faker::Name.first_name
  legalcase.country= Faker::Address.country
  legalcase.client = client
  end
end

=end
