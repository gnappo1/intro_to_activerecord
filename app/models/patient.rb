class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :physicians, through: :appointments

    scope :older_than_age, ->(age) {where("age > ?", age)}

    # def self.older_than_age(age)
    #     where("age > #{age}")
    # end
end