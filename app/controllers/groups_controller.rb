class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @document = Document.new
    @documents = @group.documents.includes(:user)
  end

  private

  def group_params
    params.require(:group).permit(:group_name, :image).merge(user_id: current_user.id)
  end
end
