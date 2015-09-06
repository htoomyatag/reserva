# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

order = Order.create([

{name:"Htoo Myat Aung", res_time:"7:00 PM", res_date:"25.5.2015", number_of_guest:"3"},
{name:"Aye Myat", res_time:"11:00 AM", res_date:"1.6.2015", number_of_guest:"10"},
{name:"Shwe Sin", res_time:"9:00 AM", res_date:"1.6.2015", number_of_guest:"5"},

])



admin = User.create([

{user_name: "htoomyataung", email: "htoomyatag.webdev@gmail.com", password: "privatehma", password_confirmation: "privatehma"},
{user_name: "theldarlykhin", email: "theldarlykhin.webdev@gmail.com", password: "privatethel", password_confirmation: "privatethel"},

])