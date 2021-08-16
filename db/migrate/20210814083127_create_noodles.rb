class CreateNoodles < ActiveRecord::Migration[5.1]
  def change
    create_table :noodles do |t|
      t.string :name

      t.timestamps
    end
  end
end
