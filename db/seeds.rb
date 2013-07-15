# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book1 = Book.create({:title=>'考研政治', :subTitle=> '林如芬2013考研'})
e11 = Entry.create(:name=>'promise', :description=>'I promise to go there on time', :book_id=>book1.id)
e12 = Entry.create(:name=>'creepy', :description=>'The idea of wearable tech makes many people creepy', :book_id=>book1.id)
e13 = Entry.create(:name=>'predator', :description=>'The polar bear is the biggest land predator', :book_id=>book1.id)