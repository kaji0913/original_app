class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :degree_of_difficult
  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :writer
    validates :image
    validates :to_whom, length: { maximum: 100 }
    validates :overview, length: { maximum: 1000 }

    with_options numericality: { other_than: 1 } do
      validates :genre_id
      validates :degree_of_difficult_id
    end
  end
end
