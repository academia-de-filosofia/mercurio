class Person < ActiveRecord::Base

  validates_length_of :name, :minimum => 7
  validates_presence_of :name, :gender, :birth_date, :home_phone
  
  default_scope order('name')
  
  def status_description
    @status ? :active : :inactive
  end
  
end