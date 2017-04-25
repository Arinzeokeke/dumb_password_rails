module DumbPasswordRails

	def read_passwords
		 passwordFile = File.open('/../../resources/passwordlist.txt', 'r')
		 passwords = mf.readlines
		 passwords.map! {|d| d.strip}
		 passwords = con.sort
		 if passwords.include?(password)
		 	errors.add(:password, "Your password is too common. Use a more secure password")
		 end
	end

end