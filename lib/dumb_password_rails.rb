require "dumb_password_rails/version"
require 'active_model'

  	class DumbPasswordValidator < ActiveModel::EachValidator
		def self.dumb?(value)
			spec = Gem::Specification.find_by_name("dumb_password_rails")
			gem_root = spec.gem_dir 
		 	passwordFile = File.open(gem_root + '/resources/passwordlist.txt', 'r')
		 	passwords = passwordFile.readlines
		 	passwords.map! {|d| d.strip}
		 	passwords = passwords.sort
		 	return true if passwords.include?(value)
		 	false
		end

		def validate_each(record, attribute, value)
    		if self.class.dumb?(value)
    			message = "Your password is vulnerable. Use a more secure password"
      			record.errors.add(attribute, options[:message] || message || :invalid)
    		end
  		end
	end
