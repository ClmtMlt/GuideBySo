class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :brand
      t.string :website
      t.date :deadline
      t.text :informations
      t.integer :budget
      t.date :start_time
      t.string :asked_items
      t.string :email

      t.timestamps
    end
  end
end
