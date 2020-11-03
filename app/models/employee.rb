class Employee < ApplicationRecord
    belongs_to :dog

    validates_uniqueness_of :alias, condition: -> {where.not(alias: 'none')}

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
