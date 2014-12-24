class ContactMailer < ActionMailer::Base
	default :from => "sameet.sapra@gmail.com"
	default :to => "sameet.sapra@gmail.com"

		def new_message(message)
			@message = message
			mail(:subject => "TopTierTraveling")
		end
end
