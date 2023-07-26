class CsvImportUsersService
	def call(file)
	    file = File.open(file)
	    csv = CSV.parse(file, headers: true, col_sep: ";")
	    csv.each do |row|
	      user_hash = Hash.new
	      user_hash[:first_name] = row["first_name"]
	      user_hash[:last_name] = row["last_name"]
	      user_hash[:email_address] = row["email_address"]
	      user_hash[:favorite_food] = row["favorite_food"]
	      user_hash[:mobile_phone_number] = row["mobile_phone_number"]
	      # binding.b
	      # p row
	      User.create(user_hash)
	    end
	end
end