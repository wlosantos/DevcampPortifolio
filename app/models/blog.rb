class Blog < ApplicationRecord

  validates :title, presence: {message: 'Campo obrigatório!!!'}
  validates :body,  presence: true

  scope :orderDescendent, -> { all.order('created_at DESC') } 
end
