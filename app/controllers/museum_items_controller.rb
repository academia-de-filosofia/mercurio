class MuseumItemsController < InheritedResources::Base

  def index
    @museum_items = MuseumItem.search(params[:query], params[:page])
  end
end
