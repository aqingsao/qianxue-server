# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(:email=>"1@a.com", :password=>"12345678", :password_confirmation=>"12345678")
u2 = User.create(:email=>"2@a.com", :password=>"12345678", :password_confirmation=>"12345678")


book1 = NoteBook.create({:name=>'多发发', :description=> 'Just a test', :user_id=>u1.id})
e11 = Note.create(:name=>'promise', :description=>'I promise to go there on time', :note_book_id=>book1.id)
e12 = Note.create(:name=>'creepy', :description=>'The idea of wearable tech makes many people creepy', :note_book_id=>book1.id)
e13 = Note.create(:name=>'predator', :description=>'The polar bear is the biggest land predator', :note_book_id=>book1.id)

book2 = NoteBook.create({:name=>'多学习', :description=> '好好学习，天天向上', :user_id=>u1.id})
e11 = Note.create(:name=>'prey', :description=>'It\'s a prey', :note_book_id=>book2.id)
e12 = Note.create(:name=>'NSA', :description=>'National Security Agency', :note_book_id=>book2.id)
