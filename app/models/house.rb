# == Schema Information
#
# Table name: houses
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class House < ApplicationRecord

    has_many :dogs,
    primary_key: :id,
    foreign_key: :house_id,
    class_name: :Dog

    # def toys
    #     toys = []

    #     #self.dogs or dogs
    #     dogs.each do |dog|
    #         toys.concat(dog.toys)
    #     end
    #     toys
    # end

    #same as above, using "method" name dogs,not model names
    has_many(:toys, {
        through: :dogs,
        source: :toys
    })
end
