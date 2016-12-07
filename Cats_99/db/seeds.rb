# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Cat.create(name: "Kuro", color: "black", birth_date: "2014/05/19", sex: "M")
cat2 = Cat.create(name: "Shiro", color: "white", birth_date: "2014/05/19", sex: "M")
cat3 = Cat.create(name: "Mikan", color: "orange", birth_date: "1999/11/12", sex: "F")
