class Blog < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: {message: 'Campo obrigatório!!!'}
  validates :body,  presence: true

  scope :orderDescendent, -> { all.order('created_at DESC') }
end
