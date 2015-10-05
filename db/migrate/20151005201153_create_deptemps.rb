class CreateDeptemps < ActiveRecord::Migration
  def change
    create_table :deptemps do |t|
      t.int :emp_no
      t.string :dept_no
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
