module DumbPasswordRails

	class DumbPassword < ActiveModel::EachValidator
		def dumb(value)
		 	passwordFile = File.open('/../../resources/passwordlist.txt', 'r')
		 	passwords = mf.readlines
		 	passwords.map! {|d| d.strip}
		 	passwords = con.sort
		 	return true if passwords.include?(password)
		 	false
		 		r
		 		errors.add(:password, "Your password is too common. Use a more secure password")
		end

		def validate_each(record, attribute, value)
    		#options = @@default_options.merge(self.options)

    		if self.class.dumb?(value)
    			message = "Your password is too common. Use a more secure password"
      			record.errors.add(attribute, message || :invalid)
    		end
  		end
	end

end