class MediasController < InheritedResources::Base
  
  def new
    @mediaTypes = MediaType.all
    super
  end
  
end
