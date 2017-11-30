class TagsController < ApplicationController
	def show
		@tag= Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		Tag.destroy(params[:id])
		flash.notice = "Tag destroyed"
		
		redirect_to action: "index"
	end
end
