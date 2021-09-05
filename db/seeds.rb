User.create(name: "Rohit Yawalkar", email: "rohtyawalkar04@gmail.com", mobile_number: "9876543210", password: "12345678", address: "Nashik")

ProductCategory.create(name: "vegetable")
ProductCategory.create(name: "fruit")

Product.create(name: "cabbage", product_category_id: 1)
Product.create(name: "watermelon", product_category_id: 2)