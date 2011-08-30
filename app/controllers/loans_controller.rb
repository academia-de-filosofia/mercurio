class LoansController < ApplicationController
  
  def new
    @loan = Loan.new
    @loan.media = Media.find(params[:id])
    @loan.set_return_preview
    @people = Person.all
  end
  
  def create
    @loan = Loan.new(params[:loan])
    @loan.lent_at = Time.now
    @loan.save
    @loan.media.lent
    redirect_to @loan.media
  end
  
end
