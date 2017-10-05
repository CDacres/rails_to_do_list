class StaticController < ApplicationController
	def home
		@lists = current_user.lists
		render template: "lists/index"
	end
end
