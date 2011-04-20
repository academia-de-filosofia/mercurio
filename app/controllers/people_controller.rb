class PeopleController  < InheritedResources::Base

  def index
    @people = Person.find(:all, :order => 'name')
    super
  end
end