class Post < ApplicationRecord

  def self.search(search_term)
    if Rails.env.production?
      Post.where("title ilike ?", "%#{search_term}%")
    else
      Post.where("title LIKE ?", "%#{search_term}%")
    end  
  end

end  