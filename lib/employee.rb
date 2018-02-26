class Employee < ActiveRecord::Base
    belongs_to :store
    validates_presence_of :first_name, :last_name, :store_id
    validates :hourly_rate, :inclusion => { :in => 40..200 }
end
