Recipe.destroy_all
Category.destroy_all

Recipe.create!(name: "Spaghetti Carbonara", description: "A true Italian Carbonara recipe, it's ready in about 30 minutes. There is no cream....", image_url: "https://www.allrecipes.com/thmb/zJzTLhtUWknHXVoFIzysljJ9wR8=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/11973-spaghetti-carbonara-ii-DDMFS-4x3-6edea51e421e4457ac0c3269f3be5157.jpg", rating: 8.5)

Recipe.create!(name: "Caesar Salad", description: "A classic Caesar salad with homemade dressing", image_url: "https://itsavegworldafterall.com/wp-content/uploads/2023/04/Avocado-Caesar-Salad-1-1024x1536.jpg", rating: 7.8)

Recipe.create!(name: "Pancakes", description: "Fluffy pancakes perfect for a weekend breakfast", image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F02%2F17%2F21014-Good-old-Fashioned-Pancakes-mfs_002.jpg&q=60&c=sc&poi=auto&orient=true&h=512", rating: 9.0)

Recipe.create!(name: "Chicken Curry", description: "A spicy and flavorful chicken curry", image_url: "https://www.allrecipes.com/thmb/4xmE8lu1TSg893xk93wk20AKJcs=/0x512/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/46822-indian-chicken-curry-ii-DDMFS-4x3-39160aaa95674ee395b9d4609e3b0988.jpg", rating: 8.2)

italian = Category.create!(name: "Italian", description: "For when you need some Meditterean style!", image_url: "https://static.independent.co.uk/2024/04/25/16/iStock-1414575281.jpg?quality=75&width=1368&crop=3%3A2%2Csmart&auto=webp")

salads = Category.create!(name: "Salads", description: "For when you need a healthy dish!", image_url: "https://images.immediate.co.uk/production/volatile/sites/30/2014/05/Epic-summer-salad-hub-2646e6e.jpg?quality=90&webp=true&resize=375,341")

breakfast = Category.create!(name: "Breakfast", description: "To start the day right!", image_url: "https://simply-delicious-food.com/wp-content/uploads/2022/09/Breakfast-board27.jpg")

quick_easy = Category.create!(name: "Quick & Easy", description: "For when time is an issue!", image_url: "https://hips.hearstapps.com/hmg-prod/images/mexican-beef-n-rice-skillet1-1665593962.jpg?crop=1.00xw:0.752xh;0,0&resize=1200:*")
