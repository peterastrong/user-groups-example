User.destroy_all
Group.destroy_all
UserGroup.destroy_all
Group.create!([
  {name: "actualize"}
])
Group.create!([
  {name: "acltc"}
])
Group.create!([
  {name: "brooklyn"}
])
User.create!([
  {name: "Sami", email: nil}
])
User.create!([
  {name: "Peter", email: nil}
])
User.create!([
  {name: "Andy", email: nil}
])
User.create!([
  {name: "Kenny", email: nil}
])
UserGroup.create!([
  {user_id: User.first.id, group_id: Group.first.id, role: "admin"}
])
UserGroup.create!([
  {user_id: User.first.id, group_id: Group.second.id, role: "editor"}
])
UserGroup.create!([
  {user_id: User.first.id, group_id: Group.last.id, role: "member"}
])
UserGroup.create!([
  {user_id: User.second.id, group_id: Group.last.id, role: "admin"}
])
UserGroup.create!([
  {user_id: User.second.id, group_id: Group.first.id, role: "editor"}
])
UserGroup.create!([
  {user_id: User.second.id, group_id: Group.second.id, role: "member"}
])
UserGroup.create!([
  {user_id: User.third.id, group_id: Group.second.id, role: "admin"}
])
UserGroup.create!([
  {user_id: User.third.id, group_id: Group.last.id, role: "editor"}
])
UserGroup.create!([
  {user_id: User.third.id, group_id: Group.first.id, role: "member"}
])
UserGroup.create!([
  {user_id: User.last.id, group_id: Group.second.id, role: "admin"}
])
UserGroup.create!([
  {user_id: User.last.id, group_id: Group.last.id, role: "editor"}
])
UserGroup.create!([
  {user_id: User.last.id, group_id: Group.first.id, role: "member"}
])
# important note: with enums, although role is an integer, you can just put in the word "admin" or whatever as a string and it will save to the database. That way you don't need to remember which integer is assigned to each role.