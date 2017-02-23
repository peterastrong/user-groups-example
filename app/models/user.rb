class User < ApplicationRecord
  has_many :user_groups
  has_many :groups, through: :user_groups

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
