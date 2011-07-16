class Media < ActiveRecord::Base
  belongs_to :media_type, :foreign_key => 'media_type_id'
  belongs_to :genre
  belongs_to :media_status

  default_scope order('title')
  scope :list, joins(:genre)

  validates_length_of :title, :minimum => 3
  validates_presence_of :title
  validates_presence_of :author  
  validates_presence_of :genre
  validates_presence_of :media_type
  validates_numericality_of :price
  validates_numericality_of :code
  validates_uniqueness_of :code, :scope => [:genre_id]  

  before_validation :upcase_title_and_author
  
  def upcase_title_and_author     
     self.title.upcase! unless self.title.nil?
     self.author.upcase! unless self.author.nil?
  end
  
  def formatted_code
    "%04d" % self.code
  end
  
  def full_code
    self.genre.acronym + '-' + self.formatted_code
  end
  
  def self.search(query, page = 1)    
    if query
      Media.list.includes(:media_type).includes(:genre).where('title LIKE :query or author LIKE upper(:query)', :query => "%#{query}%").paginate :page => page, :per_page => 50
    else
      Media.list.includes(:media_type).includes(:genre).paginate :page => page, :per_page => 50
    end
  end
  
  def available?
    #self.media_status.id == 1
  end
      
end
