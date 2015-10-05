class Salarie < ActiveRecord::Base
  self.primary_keys = 'emp_no', 'from_date'
  
  validates :emp_no, :salary, :from_date, :to_date, presence: true
  
  belongs_to :employee
end
