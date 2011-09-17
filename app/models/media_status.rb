class MediaStatus < ActiveRecord::Base
  
  AVAILABLE = 1
  LENT = 2
  
  validates_presence_of :description
  
  def available?
    return self.id == 1
  end
  
  def lent?
    return self.id == 2
  end
end
