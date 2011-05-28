class Media < ActiveRecord::Base
  belongs_to :mediaType
  belongs_to :genre

  validates_length_of :title, :minimum => 3
  validates_presence_of :title
  validates_presence_of :author  
  validates_presence_of :genre
  validates_presence_of :mediaType
  validates_numericality_of :price
  validates_numericality_of :code

  before_validation :upcase_title_and_author
  
  def upcase_title_and_author
     self.title.upcase!
     self.author.upcase!
  end
      
end
