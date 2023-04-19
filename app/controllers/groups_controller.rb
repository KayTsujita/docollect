class GroupsController < ApplicationController
  def index
    # @groups = Group.new.all
  end

  def new
    @group = Group.new
  end

  def create
  end

  private

  def group_params
    params.require(:group).permit(:group_name, :image).merge(user_id: current_user.id)
  end
end
