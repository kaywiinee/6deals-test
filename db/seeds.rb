# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
15.times do |i|
	Book.create(
		name: 'Duong xa con hat',
        price: 61,
        image: ActionController::Base.helpers.asset_path('book1.jpg'),
        pubdate: Date.new(2015,5,27)
	)
	Book.create(
		name: 'Nhat ky cua me',
        price: 90,
        image: ActionController::Base.helpers.asset_path('book2.jpg'),
        pubdate: Date.new(2015,6,27)
	)
	Book.create(
		name: 'Ngay mai toi se khac',
        price: 77,
        image: ActionController::Base.helpers.asset_path('book3.jpg'),
        pubdate: Date.new(2015,7,27)
	)
	Book.create(
		name: 'Tron mot vong yeu thuong',
        price: 54,
        image: ActionController::Base.helpers.asset_path('book4.jpg'),
        pubdate: Date.new(2015,2,27)
	)
	Book.create(
		name: 'Ve mien tay',
        price: 34,
        image: ActionController::Base.helpers.asset_path('book5.jpg'),
        pubdate: Date.new(2015,3,27)
	)
	Book.create(
		name: 'Bo danh may',
        price: 36,
        image: ActionController::Base.helpers.asset_path('book6.jpg'),
        pubdate: Date.new(2015,4,27)
	)
end