class AddNewprogramOnForms < ActiveRecord::Migration
  def change
    add_column :forms, :new_program, :string 
  end
end
