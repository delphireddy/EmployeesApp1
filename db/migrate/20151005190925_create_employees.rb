class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.int :emp_no
      t.date :birth_date
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :hire_date

      t.timestamps null: false
    end
  end
end
