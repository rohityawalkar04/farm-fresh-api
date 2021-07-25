class User <  ActiveRecord::Base
    validates :email, presence: true, uniqueness: { message: "should be unique" }
    validates :mobile_number, presence: true, uniqueness: { message: "should be unique" }
end