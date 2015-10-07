class Title < ActiveRecord::Base
  #self.primary_keys = 'emp_no', 'title', 'from_date'
  self.primary_key = 'emp_no'
  
  validates :emp_no, :title, :from_date, :to_date, presence: true
  
  belongs_to :employee
end
