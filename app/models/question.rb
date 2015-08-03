class Question < ActiveRecord::Base
  validates :title, :content, presence: true #Boş geçilmesin
  validates :title, length: {maximum: 20}

  belongs_to :user
end
