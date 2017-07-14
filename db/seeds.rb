# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

  Food.create!([
    { category: "Vegetable", item_name: "carrots", item_number: 2, expiration: "June 29",}, 
    { category: "Vegetable", item_name: "tomatoes", item_number: 8, expiration: "June 30",},
    { category: "Grains", item_name: "loaf of bread", item_number: 1, expiration: "June 28",},
    { category: "Grains", item_name: "rice", item_number: 2, expiration: "June 29",},
    { category: "Fruit", item_name: "starberries", item_number: 12, expiration: "June 25",},
    { category: "Fruit", item_name: "grapes", item_number: 40, expiration: "June 25",},
    { category: "Meat", item_name: "NY strip steak", item_number: 4, expiration: "July 29",},
    { category: "Meat", item_name: "chicken legs", item_number: 6, expiration: "July 30",},
    { category: "Fruit", item_name: "grapefruit", item_number: 2, expiration: "June 28",},
    { category: "Vegetable", item_name: "cucumber", item_number: 3, expiration: "June 29",},
  ])

require 'nokogiri'
require 'open-uri'
# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://www.bhg.com/recipe/chicken/buffalo-chicken-drumsticks-with-blue-cheese-dip/'))

puts "### Search for nodes by css"
doc.css('h2.recipe__subHeading').each do |link|
Title.create(title:link.content)

puts "### Search for nodes by css"
doc.css('h2.recipe__subHeading').each do |link|
Image_url.create(image_url:link.content)

puts "### Search for nodes by css"
doc.css('div.recipe__ingredientContainer').each do |link|
Ingredient.create(name:link.content)

puts "### Search for nodes by css"
doc.css('div.recipe__directionsContainer').each do |link|
Direction.create(direction:link.content)


require 'nokogiri'
require 'open-uri'
# Fetch and parse HTML document
doc = Nokogiri::HTML(open('http://www.bhg.com/recipe/chicken/chicken-and-asparagus-skillet-supper/'))

puts "### Search for nodes by css"
doc.css('h2.recipe__subHeading').each do |link|
Title.create(title:link.content)

puts "### Search for nodes by css"
doc.css('h2.recipe__subHeading').each do |link|
Image_url.create(image_url:link.content)

puts "### Search for nodes by css"
doc.css('div.recipe__ingredientContainer').each do |link|
Ingredient.create(name:link.content)

puts "### Search for nodes by css"
doc.css('div.recipe__directionsContainer').each do |link|
Direction.create(direction:link.content)

