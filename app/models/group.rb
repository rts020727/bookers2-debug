class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  
  validates :name, presence: true
  validates :introduction, presence: true
  
  has_one_attached :image
  
  def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
  end
end
