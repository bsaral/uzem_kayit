class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :telephone
      t.text :address
      t.string :country
      t.string :institution
      t.string :program

      t.timestamps
    end
  end
end
