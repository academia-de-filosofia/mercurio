class Media < ActiveRecord::Base
  belongs_to :mediaType
  belongs_to :genre
  default_scope joins(:genre).order('acronym, code')

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
  
  def formatted_code
    "%04d" % self.code
  end
    
  
  def full_code
    self.genre.acronym + self.formatted_code
  end
      
end
