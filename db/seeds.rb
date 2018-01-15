# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all

Product.create(title: 'Seven Mobile Apps in Seven Weeks',
	description: 
		"<p> 
	<em>Native Apps, Multiple Platforms</em> 
	Answer the question 'Can we build this for ALL the devices?' with a resounding YES. 
	Learn how to build apps using seven different platforms: Mobile Web, iOS, Android, Windows, RubyMotion, React Native, and Xamarin. 
	Find out which cross-platform solution makes the most sense for your needs, whether youre new to mobile or an experienced developer expanding your options. 
	Start covering all of the mobile world today. 
	</p>",
	image_url: '7apps.jpg',
	price: 26.00)