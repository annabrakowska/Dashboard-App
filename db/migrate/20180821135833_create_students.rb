class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.string :password
      t.integer :cohort_id
      t.timestamps
    end
  end
end
