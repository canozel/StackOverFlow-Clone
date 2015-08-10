class Question < ActiveRecord::Base
  validates :title, :content, presence: true #Boş geçilmesin
  validates :title, length: {min: 3}

  has_many :answers, dependent: :destroy
  belongs_to :user
end
