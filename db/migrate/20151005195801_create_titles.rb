class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.int :emp_no
      t.string :title
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
