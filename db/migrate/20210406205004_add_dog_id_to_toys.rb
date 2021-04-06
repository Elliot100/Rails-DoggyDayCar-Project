class AddDogIdToToys < ActiveRecord::Migration[5.2]
  def change
    #table name, column name, type, (optional)options hash
    #same as add_column(:toys, dog_id, :integer, {null: false})
    add_column :toys, :dog_id, :integer, null: false
    add_column :toys, :color, :string, null: false
  end
end
