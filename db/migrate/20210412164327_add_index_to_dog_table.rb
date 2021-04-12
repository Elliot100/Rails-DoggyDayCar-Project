class AddIndexToDogTable < ActiveRecord::Migration[5.2]
  def change
    #table, column name, *optional hash
    add_index :dogs, :name, {unique: true}
  end
end
