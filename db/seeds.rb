# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "slhcnzl@gmail.com", password: "12345678")
User.create(email: "can.ozel@bil.omu.edu.tr", password: "12345678")
User.create(email: "adil@gmail.com", password: "12345678")
User.create(email: "b@gmail.com", password: "12345678")
User.create(email: "c@gmail.com", password: "12345678")
User.create(email: "d@gmail.com", password: "12345678")

Profile.find(1).update(first_name: "Salih Can", last_name: "ÖZEL")
Profile.find(2).update(first_name: "Adil", last_name: "İSTİKBAL")
Profile.find(3).update(first_name: "Semih", last_name: "ÖZEL")
Profile.find(4).update(first_name: "Levent Sencer", last_name: "ŞAHİN")
Profile.find(5).update(first_name: "d", last_name: "d")

(1..5).each do |f|
  Question.create(title: "başlık #{f}", content: "içerik #{f}", user_id: 1)
end

(5..10).each do |f|
  Question.create(title: "başlık #{f}", content: "içerik #{f}", user_id: 2)
end