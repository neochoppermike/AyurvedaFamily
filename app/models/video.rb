class Video < ApplicationRecord

  def self.search(search_term)
    if Rails.env.production?
      Video.where("title ilike :search_term OR description ilike :search_term", search_term: "%#{search_term}%")
    else
      Video.where("title LIKE :search_term OR description LIKE :search_term", search_term: "%#{search_term}%")
    end  
  end

end
