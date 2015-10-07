class Employee < ActiveRecord::Base
  self.primary_key = 'emp_no'
  
  validates :emp_no, :birth_date, :first_name, :last_name, :gender, :hire_date, presence: true
  
  has_many :salaries
  has_many :titles
    
  has_many :dept_emps
  has_many :departments, through: :dept_emps
  
  has_many :dept_managers
  has_many :departments, through: :dept_managers  
end

