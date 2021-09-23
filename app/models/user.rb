class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :work_kind
  belongs_to :role
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do

    validates :name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
    validates :nickname, uniqueness: true
    
    with_options numericality: { only_integer: true } do
      validates :age
      validates :work_year
    end
    
    with_options numericality: { other_than: 1 } do
      validates :work_kind_id
      validates :role_id
    end
  
  end

  def already_liked?(post)
    self.likes.exists?(post_id: post.id)
  end

end
