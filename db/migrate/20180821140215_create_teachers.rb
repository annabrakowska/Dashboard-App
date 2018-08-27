class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :salary
      t.string :education
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end
