class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.int :emp_no
      t.int :salary
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
