class PeopleController  < InheritedResources::Base

  def index
    @people = Person.search(params[:query], params[:page])
  end
  
  def emails
    @people = Person.search(params[:query], params[:page])
  end

end