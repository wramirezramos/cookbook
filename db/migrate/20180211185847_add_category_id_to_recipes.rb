class AddCategoryIdToRecipes < ActiveRecord::Migration
    def change
    add_reference :recipes, :category, index: true
    add_foreign_key :recipers, :categories
    end
end