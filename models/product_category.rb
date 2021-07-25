class ProductCategory <  ActiveRecord::Base
    validates :name, presence: true, uniqueness: { message: "should be unique" }
end