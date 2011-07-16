class MediasController < InheritedResources::Base
    
  def index
    @medias = Media.search(params[:query], params[:page])
  end
  
  def new
    @media_types = MediaType.all
    @genres = Genre.all
    super
  end 
  
  def edit
    @media_types = MediaType.all
    @genres = Genre.all
    super
  end
  
  def update
    @media_types = MediaType.all
    @genres = Genre.all
    super
  end
  
end
