class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates_numericality_of :annual_revenue, :only_integer => true, :greater_than_or_equal_to => 0
    validate :must_sell_mens_or_womens_apparel

    def must_sell_mens_or_womens_apparel
        if(!mens_apparel && !womens_apparel)
            errors.add(:mens_apparel, :womens_apparel, 'Must sell either mens or womens apparel')
        end
    end
end
