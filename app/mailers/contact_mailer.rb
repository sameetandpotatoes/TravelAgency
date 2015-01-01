class ContactMailer < ActionMailer::Base
	default :from => "toptiertraveling@gmail.com"
	default :to => "toptiertraveling@gmail.com"

		def new_message(message)
			@message = message
			mail(:subject => "Email from toptiertraveling.com")
		end
end
