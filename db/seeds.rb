# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{
  first:      "Joanne",
  last:       "Hall",
  password:   "password"
},
  {
  first:      "Michelle",
  last:       "Dotzenrod",
  password:   "password"
},
  {
  first:      "Cathy",
  last:       "Moniz",
  password:   "password"
  }])

  recipients = Recipient.create([{
    first: "Ian",
    last: "Hall",
    age: 14,
    size: 'shoe 9, hat 15, shirt M, pants 25x30"',
    notes: "likes Legos, Minecraft, science, video games, guitar",
    user_id: 1,
  },
    {
    first: "Brendan",
    last: "Hall",
    age: 9,
    size: 'shoe 3, hat S, shirt S, pants boys 8',
    notes: "likes Legos, exploring, drawing, action figures",
    user_id: 1,
  },
    {
    first: "Chloe",
    last: "Hall",
    age: 9,
    size: 'shoe 2, hat S, shirt M, pants 8',
    notes: "likes Legos, Minecraft, science, video games, guitar",
    user_id: 1,
  }])

  clans = Clan.create([{
    name: "Hall"
  },
  {
    name: "Moniz"
  },
  {
    name: "Dotzenrod"
  }])
