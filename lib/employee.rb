class Employee < ActiveRecord::Base
    belongs_to :store
    validates_presence_of :first_name, :last_name, :store_id
    validates :hourly_rate, :inclusion => { :in => 40..200 }
    
    private
    after_create do 
        pw = (0...8).map { (65 + rand(26)).chr }.join
        Employee.find(self.id).update(password: pw)
    end
end
