require 'open-uri'
require 'json'

Recipe.destroy_all
Category.destroy_all

def recipe_builder(recipe_id, category)

  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{recipe_id}"

  response = URI.open(url).read
  recipe_data = JSON.parse(response)["meals"]&.first

  if recipe_data

    recipe_name = recipe_data["strMeal"]
    recipe_description = recipe_data["strInstructions"] || "No description available"
    recipe_image = recipe_data["strMealThumb"]
    recipe_rating = rand(1..10)

    Recipe.create!(
      name: recipe_name,
      description: recipe_description,
      image_url: recipe_image,
      rating: recipe_rating,
      category: category
    )

    puts "Created recipe: #{recipe_name} (ID: #{recipe_id})"
  else
    puts "No details found for recipe ID: #{recipe_id}"
  end
end

categories = ["Breakfast", "Pasta", "Seafood", "Dessert"]

categories.each do |category_name|

  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category_name}"
  response = URI.open(url).read
  recipes = JSON.parse(response)

  category = JSON.parse(response)["meals"]&.first

  category = Category.find_or_create_by!(name: category_name, image_url: category["strMealThumb"])

  if recipes["meals"]
    recipes["meals"].each do |meal|
      recipe_id = meal["idMeal"]
      puts "Processing Recipe ID: #{recipe_id}"

      recipe_builder(recipe_id, category)
    end
  else
    puts "No recipes found for category: #{category_name}"
  end
end
