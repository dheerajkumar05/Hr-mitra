class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :age
      t.date :date_of_birth
      t.string :city
      t.string :pincode
      t.string :address
      t.integer :contact_no

      t.timestamps
    end
  end
end
