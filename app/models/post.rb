class Post < ApplicationRecord

  def self.search(search_term)
    if Rails.env.production?
      Post.where("title ILIKE :search_term OR body ILIKE :search_term", search_term: "%#{search_term}%")
    else
      Post.where("title LIKE :search_term OR body LIKE :search_term", search_term: "%#{search_term}%")
    end  
  end

end  