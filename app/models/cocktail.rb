class Cocktail < ActiveRecord::Base
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # Through set le has many ingredient via la table doses
  validates :name, presence: true, uniqueness: true
end
