# == Schema Information
#
# Table name: dogs
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  house_id   :integer          not null
#

class Dog < ApplicationRecord #if added, unique in migration, need at one here too
    validates :name, presence: true, uniqueness: true
    #add a custom validation method and message
    #validate :check_name_length

    def check_name_length
        unless self.name.length >= 4
            errors[:name] << "is too short, must be 4 or more characters"
        end
    end

    def self.lookup_name_in_ms(name)
        start = Time.now
        Dog.where(name: name)
        (Time.now - start) *1000
    end

    belongs_to :house,
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
     
    # def toys
    #     #default getter method
    #     Toy.where( {dog_id: self.id})
    # end
    has_many :toys, 
        primary_key: :id, #dog's id
        foreign_key: :dog_id,
        class_name: :Toy
    
end
