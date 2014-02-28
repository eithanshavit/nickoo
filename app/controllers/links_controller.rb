class LinksController < ApplicationController
	
	def index
		
	
	end
	
	def new
		@link = Link.new
	end
	
	  def create
		# Instantiate a new object using form parameters
		@new_link = Link.new(params[:link])
		# Save the object
		if @new_link.save
		  # If save succeeds, redirect to the list action
		  flash[:notice] = "Nickoo created"
		  redirect_to(:controller => 'home',:action => 'index')
		else
		  # If save fails, redisplay the form so user can fix problems
		  render('new')
		end
	end
end
