class Person < ActiveRecord::Base

  validates_length_of :name, :minimum => 7
  validates_presence_of :name, :gender, :birth_date, :home_phone
  
  default_scope order('name')
  
  def status_description
    @status ? :active : :inactive
  end
  
  def self.search(query, page = 1)    
    if query
      Person.where('name LIKE upper(:query)', :query => "%#{query}%").paginate :page => page, :per_page => 50
    else
      Person.paginate :page => page, :per_page => 50
    end
  end
  
end