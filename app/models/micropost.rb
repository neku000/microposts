class Micropost < ActiveRecord::Base
  belongs_to :user
  scope :search, -> (search_word){where("content LIKE ?", "%#{search_word}%")}
end
