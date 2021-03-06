namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Andreas Ofner",
								 email: "andreas.ofner@gmx.at",
								 password: "foobar",
								 password_confirmation: "foobar",
								 admin: true)
								 
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@railstutorial.org"
			password = "passowrd"
			User.create!(name: name,
									 email: email,
									 password: password,
									 password_confirmation: password)
		end
	end
	
	desc "Make only admin in database"
	task populate_admin: :environment do
		User.create!(name: "Andreas Ofner",
								 email: "andreas.ofner@gmx.at",
								 password: "foobar",
								 password_confirmation: "foobar",
								 admin: true)
	end
end