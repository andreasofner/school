require 'spec_helper'

describe "UserPages" do

	subject { page }
	let(:title) { 'Hanfthal.info - Learning App' }
	
	describe "Signup page" do
		before { visit signup_path }
		
		it { should have_content('Sign up') }
		it { should have_title(title) }
	end
end
