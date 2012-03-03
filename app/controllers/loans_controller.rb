class LoansController < ApplicationController
  
  def index
    media_status_id = params[:media] ? params[:media][:media_status_id] : nil
    @loans = Loan.search(media_status_id)
  end
  
  def new
    @loan = Loan.new
    @loan.media = Media.find(params[:id])
    @loan.set_return_preview
    @people = Person.active
  end
  
  def create
    @loan = Loan.new(params[:loan])
    @loan.lent_at = Time.now
    if @loan.save then
      @loan.media.lend
      redirect_to @loan.media
    else
      @people = Person.all
      render :new
    end
  end
  
  def return
    @loan = Media.find(params[:id]).loans.last
  end
  
  def confirm_return
    @loan = Media.find(params[:id]).loans.last
    @loan.return
    redirect_to @loan.media
  end
  
end
