# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

book1 = NoteBook.create({:title=>'多发发', :subTitle=> 'Just a test'})
e11 = Entry.create(:name=>'promise', :description=>'I promise to go there on time', :book_id=>book1.id)
e12 = Entry.create(:name=>'creepy', :description=>'The idea of wearable tech makes many people creepy', :book_id=>book1.id)
e13 = Entry.create(:name=>'predator', :description=>'The polar bear is the biggest land predator', :book_id=>book1.id)

book2 = NoteBook.create({:title=>'多学习', :subTitle=> '好好学习，天天向上'})
e11 = Entry.create(:name=>'prey', :description=>'It\'s a prey', :book_id=>book2.id)
e12 = Entry.create(:name=>'NSA', :description=>'National Security Agency', :book_id=>book2.id)

u1 = User.new(:email=>"1@a.com")
u1.encrypted_password="$2a$10$khsreO3tPZ2VxQnmFXfjNe/mom0OS9rzphGVGYBkRwvq..."
u1.save

u2 = User.new(:email=>"2@a.com")
u2.encrypted_password="$2a$10$khsreO3tPZ2VxQnmFXfjNe/mom0OS9rzphGVGYBkRwvq..."
u2.save