class AddIndexToFavoriteUserIdMicropostId < ActiveRecord::Migration[5.2]
  def change
    change_table :favorites do |t|
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
