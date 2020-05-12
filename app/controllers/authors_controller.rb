class AuthorsController < ApplicationController

	def index
		@authors = Author.all
	end
		
	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		@author.save
		redirect_to authors_path
	end

	def edit
		@author = Author.find_by(id: params[:id])
	end

	def update
		@author = Author.find_by(id: params[:id])
		@author.update(author_params)
		redirect_to authors_path
	end

	def destroy
		@author = Author.find_by(id: params[:id])
		@author.destroy
		redirect_to authors_path
	end
	
	private

	def author_params
		params.require(:author).permit(:first_name, :last_name, :dob, book_ids:[])
	end	
end