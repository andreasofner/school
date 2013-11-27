FactoryGirl.define do
	factory :user do
		name									"Andreas Ofner"
		email									"andreas.ofner@gmx.at"
		password							"foobar"
		password_confirmation	"foobar"
	end
end