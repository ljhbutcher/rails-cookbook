Recipe.destroy_all
Category.destroy_all

Recipe.create!(name: "Spaghetti Carbonara", description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....", image_url: "https://example.com/carbonara.jpg", rating: 8.5)

Recipe.create!(name: "Caesar Salad", description: "A classic Caesar salad with homemade dressing.", image_url: "https://example.com/caesar.jpg", rating: 7.8)

Recipe.create!(name: "Pancakes", description: "Fluffy pancakes perfect for a weekend breakfast.", image_url: "https://example.com/pancakes.jpg", rating: 9.0)

Recipe.create!(name: "Chicken Curry", description: "A spicy and flavorful chicken curry.", image_url: "https://example.com/curry.jpg", rating: 8.2)

italian = Category.create!(name: "Italian", description: "For when you need some Meditterean style!")
salads = Category.create!(name: "Salads", description: "For when you need a healthy dish!")
breakfast = Category.create!(name: "Breakfast", description: "To start the day right!")
quick_easy = Category.create!(name: "Quick & Easy", description: "For when time is an issue!")
