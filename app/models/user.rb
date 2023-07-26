class User < ApplicationRecord
	def self.to_csv
		CSV.generate(col_sep: ";") do |csv|
			csv << attribute_names
			# csv << column_name
			all.each do |record|
				csv << record.attributes.values
			end
		end
	end
end
