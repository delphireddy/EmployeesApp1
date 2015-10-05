class Deptemp < ActiveRecord::Base
  self.table_name = 'dept_emp'
  self.primary_keys = 'emp_no', 'dept_no'
  
  validates :emp_no, :dept_no, :from_date, :to_date, presence: true
  
  belongs_to :employee
  belongs_to :department  
end
