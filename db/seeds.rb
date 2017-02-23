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
UserGroup.create!([
  {user_id: 1, group_id: 1, role: "admin"}
])
UserGroup.create!([
  {user_id: 1, group_id: 2, role: "editor"}
])
UserGroup.create!([
  {user_id: 1, group_id: 3, role: "member"}
])
UserGroup.create!([
  {user_id: 2, group_id: 3, role: "admin"}
])
UserGroup.create!([
  {user_id: 2, group_id: 1, role: "editor"}
])
UserGroup.create!([
  {user_id: 2, group_id: 2, role: "member"}
])
# important note: with enums, although 