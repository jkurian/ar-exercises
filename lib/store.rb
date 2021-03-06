class ValidateApparel < ActiveModel::Validator
    def validate(record)
        unless record.mens_apparel || record.womens_apparel
            #not sure how to add error properly
            record.errors[:required] << 'to sell mens or womens apparel'
        end
    end
end

class Store < ActiveRecord::Base
    include ActiveModel::Validations

    has_many :employees
    validates :name, length: { minimum: 3 }
    validates_numericality_of :annual_revenue, :only_integer => true, :greater_than_or_equal_to => 0
    validates_with ValidateApparel
    before_destroy :check_for_employees

private

  def check_for_employees
    if(Employee.where(store_id: self.id).count == 0)
        return true
    end
    errors[:base] << "cannot be destroyed because store has employees"
    false
  end
end