class StaticController < ApplicationController
	def home
		@lists = List.all
       render template: "lists/index"
	end
end