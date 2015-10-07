class Department < ActiveRecord::Base
  self.primary_key = 'dept_no'
  
  validates :dept_no, :dept_name, presence: true
  validates :dept_name, uniqueness: true
  
  has_many :dept_emps
  has_many :employees, through: :dept_emps
  
  has_many :dept_managers
  has_many :employees, through: :dept_managers  
end
