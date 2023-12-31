module GenerateCsv
	extend ActiveSupport::Concern

	class_methods do
		def to_csv(collection)
			CSV.generate(col_sep: ";") do |csv|
				csv << attribute_names
				# csv << column_name
				collection.find_each do |record|
					csv << record.attributes.values
				end
			end
		end
	end

end