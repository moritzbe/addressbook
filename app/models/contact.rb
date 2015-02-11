class Contact < ActiveRecord::Base
has_many :emails, :numbers 
end
