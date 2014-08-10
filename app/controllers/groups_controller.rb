class GroupsController < ApplicationController
  def index
  	@group = Group.all
  end

  def new
  	@group = Group.new
  end

  def create
  	@group = Group.new(group_params)
  	if @group.save
  		redirect_to groups_path
  		flash[:notice] = "Create Successfully"
  	else
  		render :new
  	end
  end

  def edit
  	@group = Group.new
  end

  private
  	def group_params
  		params.require(:group).permit(:title, :description)
  	end
end
