class TplController < ApplicationController
	def index
		render file: "tpl/#{params[:name]}", layout: false
	end
end