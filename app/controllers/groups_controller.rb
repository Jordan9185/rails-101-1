class GroupsController < ApplicationController
	def index
		@groups = Group.all
	end
	def new
		@groups = Group.new
		if @groups.nil?
		end
	end
end
