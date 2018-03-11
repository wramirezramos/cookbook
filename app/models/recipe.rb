class Recipe < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :title, :ingredients, :instructions
 # validates :title, uniqueness: true
 def self.find_all_by_query(query)
    query = query.downcase
    query = "%#{query}%"
    
    Recipe.where(['lower(title) like ?', query])
    end    
end
