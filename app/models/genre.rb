class Genre < ActiveRecord::Base
  
  default_scope order('acronym')
  
  def to_str
    "#{acronym} - #{name}"
  end
  
end
