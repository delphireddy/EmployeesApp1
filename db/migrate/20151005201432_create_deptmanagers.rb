class CreateDeptmanagers < ActiveRecord::Migration
  def change
    create_table :deptmanagers do |t|
      t.string :dept_no
      t.int :emp_no
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
