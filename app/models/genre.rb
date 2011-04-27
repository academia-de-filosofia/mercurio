class Genre < ActiveRecord::Base
  
  def to_str
    "#{acronym} - #{name}"
  end
  
end
