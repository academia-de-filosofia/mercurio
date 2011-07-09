class MediaType < ActiveRecord::Base

  default_scope order('name')  
  
  def to_s
    "#{name}"
  end
  
end
