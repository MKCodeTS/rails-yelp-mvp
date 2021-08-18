class AddReviewsToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
  end
end



# Note the t.references
# Always add foreign_key: true to enforce referential integrity
