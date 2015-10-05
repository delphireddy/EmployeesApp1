class Deptmanager < ActiveRecord::Base
  self.table_name = 'dept_manager'
  self.primary_keys = 'emp_no', 'dept_no'
  
  validates :dept_no, :emp_no, :from_date, :to_date, presence: true
  
  belongs_to :employee
  belongs_to :department
end
