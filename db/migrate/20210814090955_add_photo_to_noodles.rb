class AddPhotoToNoodles < ActiveRecord::Migration[5.1]
  def change
    add_column :noodles, :photo, :string
  end
end
