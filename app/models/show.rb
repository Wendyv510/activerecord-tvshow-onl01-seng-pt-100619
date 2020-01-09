
class Show < ActiveRecord::Base
  
  def self.highest_rating 
    self.maximum(:rating)
  end 
  
  def self.most_popular_show 
    self.where("rating = ?", self.highest_rating).first
  end 
  
  def lowest_rating 
    Show.minimum(:rating) 
  end 
  
  def least_popular_show 
    Show.lowest_rating 
  end 
  
  def ratings_sum 
    Show.sum(:rating)
  end 
  
  def popular_shows 
    Show.where(":rating > ?",5)
  end 
  
  def shows_by_alphabetical_order 
    Show.order(:name) 
  end 
  
end 