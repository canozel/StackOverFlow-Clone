class Question < ActiveRecord::Base
  validates :title, :content, presence: true #Boş geçilmesin
  validates :title, length: {maximum: 20}

  has_many :answers, dependent: :destroy
  belongs_to :user
end
