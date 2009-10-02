class PrayerRequestsController < ApplicationController 

  def index
    @prayer_requests = PrayerRequest.find :all
    #@person = Person.find(params[:people_id]) 
    #@prayer_requests = @person.prayer_requests
  end  

  def show
    @person = Person.find(params[:people_id]) 
    @prayer_request = @person.prayer_requests.find(params[:id]) 
  end  

  def new
    @person = Person.find(params[:people_id]) 
    @prayer_request = @person.prayer_requests.build
  end  
 
  def create
    @person = Person.find(params[:people_id]) 
    @prayer_request = @person.prayer_requests.build(params[:prayer_request]) 
    if @prayer_request.save
      redirect_to person_prayer_request_url(@person, @prayer_request) 
    else 
      render :action => "new" 
    end 
  end  
 
  def edit
    @person = Person.find(params[:people_id]) 
    @prayer_request = @person.prayer_requests.find(params[:id]) 
  end  
 
  def update
    @person = Person.find(params[:people_id]) 
    @prayer_request = PrayerRequest.find(params[:id]) 
    if @prayer_request.update_attributes(params[:prayer_request]) 
      redirect_to person_prayer_request_url(@person, @prayer_request) 
    else 
      render :action => "edit" 
    end 
  end  
 
  def destroy
    @person = Person.find(params[:people_id]) 
    @prayer_request = PrayerRequest.find(params[:id]) 
    @prayer_request.destroy respond_to do |format|
      format.html { redirect_to person_prayer_requests_path(@person) }
      format.xml { head :ok }
    end
  end 

end 
