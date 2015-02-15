class Contact < ActiveRecord::Base

	def self.search(letter)
		array = Contact.all
		array.each do |obj|
			name = obj.prename
			first_letter = name[0]
			if letter == first_letter
				return obj
			end
		end
	end


has_many :emails 
has_many :numbers 
end



