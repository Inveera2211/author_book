class Api::AuthorsController < ApplicationController

	def authors_books
		author = Author.find_by(id: params[:id].to_i)
		if author
			render json: {status: true, message: "Author books Details", auth_name: author.full_name,DateofBirth: author.dob, books: author.books }
		else
			render json: {status: true, message:" Author not found" }
		end	
	end	

end