class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
