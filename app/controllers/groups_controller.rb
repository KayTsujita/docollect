class GroupsController < ApplicationController
  def index
    # @groups = Group.new.all
  end

  def new
    @group = Group.new
  end

  def create
  end
end
