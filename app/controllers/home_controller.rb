class HomeController < ApplicationController
	def index
		logger.info "home#index"
		
	end
	
	def search
		logger.info "home#search"
		if (params[:q]=="")
			flash[:notice] = "Please enter a Nickoo"
			redirect_to :action => :index
		elsif (params[:q] && link = Link.find_by_nick(params[:q]))
			redirect_to(link.full_url)
		else
			flash[:notice] = "Nickoo not found"
			redirect_to :action => :index
		
		end
	end
	

  
end
