class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups

  # model methods created to mock the enum role methods. The only difference is that we need to pass in the group_id so we know which group we're checking to see if the user is an admin, editor, or member of.

  # if this is confusing, you can rename the methods to be more explicit
  # i.e. `def admin_of_group?(group_id)`

  # each method will return true/false
  
  def admin?(group_id)
    user_groups.find_by(group_id: group_id).admin?
  end


  def editor?(group_id)
    user_groups.find_by(group_id: group_id).editor?
  end

  def member?(group_id)
    user_groups.find_by(group_id: group_id).member?
  end
end
