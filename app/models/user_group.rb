class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group

  enum role: { admin: 1, editor: 2, member: 3 }
end
