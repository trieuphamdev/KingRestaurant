#Create section
sections = %w[Breakfast Lunch Dinner Drinks]
sections.each {|item| Section.create(name: item)}
cuisines = %w[Japan France China]
cuisines.each {|item| Cuisine.create(name: item)}
#Create food_item
Section.all.each do |item|
	for i in 0..14
		FoodItem.create(
				name: Faker::Name.name,
				description: Faker::Lorem.paragraph,
				price: rand(1..100)*1000,
				img_url: "food/#{rand(1..30)}.jpg",
				section_id: item.id,
				cuisine_id: rand(1..3).to_i,
				)
	end
end
