class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      #type, column name, and constraint
      t.string :name, null: false
    end


  end
end
