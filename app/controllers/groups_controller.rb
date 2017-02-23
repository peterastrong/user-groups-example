class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @users = User.all
    render "index.html.erb"
  end
end
