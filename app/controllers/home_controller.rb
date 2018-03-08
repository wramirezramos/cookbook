class HomeController < ApplicationController
  def index
    @number_of_recipes = Recipe.count
  end

  def about
  end

  def contact
   @office_phone_number = "123-123-1234"
  end
end
