class GroupsController < ApplicationController
  def index
    groups = Group.all
    render "index.html.erb"
  end
end
