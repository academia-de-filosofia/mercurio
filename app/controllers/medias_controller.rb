class MediasController < InheritedResources::Base
  
  def new
    @mediaTypes = MediaType.all
    @genres = Genre.all
    super
  end 
  
  def edit
    @mediaTypes = MediaType.all
    @genres = Genre.all
    super
  end
  
  def update
    @mediaTypes = MediaType.all
    @genres = Genre.all
    super
  end

  
end
