require "dumb_password_rails/version"
require "dumb_password_rails/"

module DumbPasswordRails
  	class DumbPasswordValidator < ActiveModel::EachValidator
		def self.dumb?(value)
		 	passwordFile = File.open('/../resources/passwordlist.txt', 'r')
		 	passwords = mf.readlines
		 	passwords.map! {|d| d.strip}
		 	passwords = con.sort
		 	return true if passwords.include?(password)
		 	false
		end

		def validate_each(record, attribute, value)
    		#options = @@default_options.merge(self.options)

    		if self.class.dumb?(value)
    			message = "Your password is too common. Use a more secure password"
      			record.errors.add(attribute, options[:message] || message || :invalid)
    		end
  		end
	end

end
