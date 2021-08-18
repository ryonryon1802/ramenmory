class AddStoreinfoToNoodles < ActiveRecord::Migration[5.1]
  def change
    add_column :noodles, :store, :string
    add_column :noodles, :location, :string
  end
end
