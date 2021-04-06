class AddDogIdToToys < ActiveRecord::Migration[5.2]
  def change
    #same as (:toys, :dog_id, :integer, {null: false})
    add_column :toys, :dog_id, :integer, null: false
    add_column :toys, :color, :string, null: false
    add_column :toys, :created_at, :datetime, null: false
    add_column :toys, :updated_at, :datetime, null: false
    add_column :dogs, :created_at, :datetime, null: false
    add_column :dogs, :updated_at, :datetime, null: false
  
  end
end
