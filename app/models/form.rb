class Form < ActiveRecord::Base
  attr_accessible :address, :country, :email, :institution, :name, :program, :surname, :telephone, :new_program
end
