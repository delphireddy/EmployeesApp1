class Title < ActiveRecord::Base
  self.primary_keys = 'emp_no', 'title', 'from_date'
  
  validates :emp_no, :title, :from_date, :to_date, presence: true
  
  belongs_to :employee
end
