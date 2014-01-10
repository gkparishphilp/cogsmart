class Resource < Document

	def self.by_category( cat )	
		where( category: cat )
	end
end