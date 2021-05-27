Product.create([
  { title: 'Pasta Carbonara', description: 'Second courses', price: 9.00 }, 
  { title: 'Chicken Soup', description: 'Entrees', price: 13.00 }, 
  { title: 'Vitamin Salad', description: 'Salads', price: 7.00 }, 
  { title: 'Pasta With Walnut', description: 'Second courses', price: 25.00 }, 
  { title: 'Item Four', description: 'Second courses', price: 87.00 }, 
  { title: 'Item Five', description: 'Second courses', price: 57.00 }, 
  { title: 'Item Six', description: 'Second courses', price: 102.00 }
])

User.create([
  { name: 'Sasaran Andrei', email: 'sasaranandreipaul@gmail.com', password: '123456', password_confirmation: '123456', admin: true, activated: true, activated_at: Time.zone.now },
  { name: 'Slim Shady', email: 'slim@shady.com', password: '123456', password_confirmation: '123456', admin: false, activated: true, activated_at: Time.zone.now }
])
