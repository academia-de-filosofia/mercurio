class MediaType < ActiveRecord::Base

  default_scope order('name')  
  attr_protected :name
  validates_numericality_of :loan_days
  validates_presence_of :loan_days
  
  def to_s
    "#{name}"
  end
  
end
