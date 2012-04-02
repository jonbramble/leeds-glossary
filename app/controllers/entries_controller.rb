class EntriesController < ApplicationController

 before_filter :require_user
 before_filter :get_subtopic

 def index
   @entry = Entry.new
   @entries = @subtopic.entries
   

   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end

 end

 def edit
   @entry = Entry.includes(:language, :translations=>[:language]).find(params[:id]) # eager loading of translations and language
   @translations = @entry.translations
   
   respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
    end

 end

 def update
   @entry = Entry.find(params[:id])
   
   respond_to do |format|
	 if @entry.update_attributes(params[:entry])
        	format.html { redirect_to(subtopic_entries_path(@subtopic), :notice => 'Entry was updated') }
		#format.js { render :json => [@entry,@entry.language.name]}
         else
        	format.html { render :action => "edit" }
		#format.js
         end
   end

 end

#ajax methods

 def create
   @entry = @subtopic.entries.build(params[:entry])
   #@translation = @entry.translations.build(params[:entry][:translation])

   respond_to do |format|
	 if @entry.save
        	#format.html { redirect_to(substance_hazardstatements_path(@substance), :notice => 'Hazard was successfully added.') }
		format.js { render :json => [@entry,@entry.language.name]}
         else
        	#format.html { render :action => "new" }
		format.js
         end
   end
   

 end

 def destroy
   @entry = Entry.find(params[:id])
   @entry.delete
   
   respond_to do |format|
      format.html { redirect_to(subtopic_entries_path(@subtopic)) } # want to redirect to substance show
      format.js { render :nothing => true }
    end
 
 end

private
 def get_subtopic
	@subtopic = Subtopic.find(params[:subtopic_id],:include => [:entries])
 end


end
