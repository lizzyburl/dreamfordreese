class SuggestionsController < ApplicationController

	def new
		@suggestion = Suggestion.new
	end
	
	def create
		@suggestion = Suggestion.new(suggestion_params)
		
		if @suggestion.save
			redirect_to suggestions_path
		else
			render 'new'
		end
	end
	
	
	def destroy
		@suggestion = Suggestion.find(params[:id])
		@suggestion.destroy
		
		redirect_to suggestions_path
	end
	
	def index
		@suggestions = Suggestion.all
	end
		
	private
		def suggestion_params
			votes = 0
			params.require(:suggestion).permit(:comment, votes)
		end
end
