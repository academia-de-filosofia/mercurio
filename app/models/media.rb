class Media < ActiveRecord::Base
  belongs_to :media_type, :foreign_key => 'media_type_id'
  belongs_to :genre
  belongs_to :media_status
  has_many :loans, :order => 'id ASC'

  default_scope order('title')
  scope :list, joins(:genre)

  validates_length_of :title, :minimum => 3
  validates_presence_of :title
  validates_presence_of :author  
  validates_presence_of :genre
  validates_presence_of :media_type
  validates_numericality_of :price, :allow_nil => true
  validates_numericality_of :code
  validates_uniqueness_of :code, :scope => [:genre_id]  

  before_validation :upcase_title_and_author
  
  def abbreviated_title
    return excerpt(self.title,:radius => 5)
  end
  
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
  
  def self.by_code(query, page = 1)
    acronym = query[0..2]
    code = self.get_numbers query
    
  end
  
  def self.search(query, page = 1)    
    if query      
      acronym = query[0..2]
      code = self.get_numbers query
      
      medias = Media.list.includes(:media_type).includes(:genre)
        .where('genres.acronym = upper(:acronym) and code = :code', :code => code ,:acronym => acronym)
        .paginate :page => page, :per_page => 50
      
      if medias.empty? then
        medias = Media.list.includes(:media_type).includes(:genre)
        .where('''title LIKE upper(:query) 
                  or author LIKE upper(:query) 
                  or genres.acronym = upper(:acronym) 
                  or code = :code
                  or media_types.name LIKE upper(:query)''', 
                  :query => "%#{query}%",
                  :code => code,
                  :acronym => acronym)
        .paginate :page => page, :per_page => 50
      end
    else
      medias = Media.list.includes(:media_type).includes(:genre).paginate :page => page, :per_page => 50
    end
    return medias
  end
  
  def last_loan
    self.loans.first
  end
  
  def available?
    self.media_status.nil? or self.media_status.try(:available?)
  end
  
  def lent?
    self.media_status.try(:lent?)
  end
  
  def lend
    update_status(2)
  end
  
  def return
    update_status(1)
  end
  
  private
  
  def update_status(media_status_id)
    self.media_status = MediaStatus.find(media_status_id)
    self.save
  end
  
  def self.get_numbers(query)
    query.scan(/\d/).join.to_i unless query.nil?
  end
      
end
