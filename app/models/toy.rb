# == Schema Information
#
# Table name: toys
#
#  id         :bigint           not null, primary key
#  color      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  dog_id     :integer          not null
#

class Toy < ApplicationRecord

    # def dog
    # #default getter method
    #     Dog.find(dog_id)
    # end

    #associations, auto create getters and setters,implied () {}
    belongs_to :dog, 
        primary_key: :id,  #Dog's id
        foreign_key: :dog_id, #Toy's table
        class_name: :Dog

    has_one(:house, {
        through: :dog,
        source: :house
    })
 
end
