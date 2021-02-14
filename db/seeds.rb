PaymentMethod.create([
  { name: 'Boleto Bancário' , name_value: 'PaymentSlipService' },
  { name: 'Pix' , name_value: 'PixService' },
])

Product.create([
  { title: 'Coffees & Teas' , sub_title: 'Blended to Perfection' , photo: 'products-01.jpg' , value: '15' , description: 'We take pride in our work, and it shows. Every time you order a beverage from us, we guarantee that it will be an experience worth having. Whether its our world famous Venezuelan Cappuccino, a refreshing iced herbal tea, or something as simple as a cup of speciality sourced black coffee, you will be coming back for more.' },
  { title: 'Delicious Treats, Good Eats' , sub_title: 'Bakery & Kitchen' , photo: 'products-02.jpg' , value: '30' , description: 'Our seasonal menu features delicious snacks, baked goods, and even full meals perfect for breakfast or lunchtime. We source our ingredients from local, oragnic farms whenever possible, alongside premium vendors for specialty goods.' },
  { title: 'Bulk Speciality Blends' , sub_title: 'From Around the World' , photo: 'products-03.jpg' , value: '25' , description: 'Travelling the world for the very best quality coffee is something take pride in. When you visit us, youll always find new blends from around the world, mainly from regions in Central and South America. We sell our blends in smaller to large bulk quantities. Please visit us in person for more details.' }
])

User.create([

  { full_name: 'User 1' , email: 'user1@gmail.com' , password: '123123' , password_confirmation: '123123' , role: 0 , payment_method_id: 1 , expiration_date: 5 },
  { full_name: 'User 2' , email: 'user2@gmail.com' , password: '123123' , password_confirmation: '123123' , role: 1 , payment_method_id: 1 , expiration_date: 10 },

])