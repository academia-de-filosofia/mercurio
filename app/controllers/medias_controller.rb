class MediasController < InheritedResources::Base
  
  def new
    @mediaTypes = MediaType.all
    super
  end 
  
  def edit
    @mediaTypes = MediaType.all
    super
  end

  
end
