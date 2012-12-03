class Form < ActiveRecord::Base
  attr_accessible :address, :country, :email, :institution, :name, :program, :surname, :telephone, :new_program
  validates :name,:surname,:email,:program,    :presence => true
  validates_format_of :email, 
					:with => /^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/, 
					:message => "Lutfen Kontrol Ediniz."
  validates :telephone, :numericality => true
end
