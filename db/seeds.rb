Gender.create(name: "men")
Gender.create(name: "women")
Gender.create(name: "boys")
Gender.create(name: "girls")
Gender.create(name: "kids")
Age.create(name: "youth")
Age.create(name: "children")
Age.create(name: "infant_toddler")
Franchise.create(name: "deerupt")
Franchise.create(name: "nmd")
Franchise.create(name: "ultraboost")
Franchise.create(name: "arkyn")
Franchise.create(name: "superstar")
Franchise.create(name: "alphabounce")
Franchise.create(name: "pureboost")
Franchise.create(name: "predator")
Franchise.create(name: "x")
Franchise.create(name: "nemeziz")
Franchise.create(name: "copa")
Franchise.create(name: "crazy_explosive")
Franchise.create(name: "stan_smith")
Franchise.create(name: "zne")
Franchise.create(name: "eqt")
Franchise.create(name: "gazelle")
Franchise.create(name: "campus")
Franchise.create(name: "tubular")
Franchise.create(name: "iconics")
Franchise.create(name: "adicolor")
Franchise.create(name: "i_5923")
Franchise.create(name: "swift")
Franchise.create(name: "spzl")
Franchise.create(name: "adilaette")
Franchise.create(name: "adizero")
Franchise.create(name: "supernova")
Franchise.create(name: "mad")
Franchise.create(name: "podsystem")
Producttype.create(name: "cleat")
Producttype.create(name: "slides")
Producttype.create(name: "hoodies_sweatshirts")
Producttype.create(name: "jackets")
Producttype.create(name: "short_sleeve_shirts")
Producttype.create(name: "t_shirts")
Producttype.create(name: "long_sleeve_shirts")
Producttype.create(name: "jerseys")
Producttype.create(name: "tights")
Producttype.create(name: "shorts")
Producttype.create(name: "tank_tops")
Producttype.create(name: "underwear")
Producttype.create(name: "bags")
Producttype.create(name: "hats")
Producttype.create(name: "socks")
Producttype.create(name: "phone_case")
Producttype.create(name: "sunglasses")
Producttype.create(name: "balls")
Producttype.create(name: "watches")
Producttype.create(name: "gloves")
Producttype.create(name: "scarves")
Producttype.create(name: "pants")
Producttype.create(name: "bras")
Producttype.create(name: "dresses_and_skirts")
Producttype.create(name: "t_shirts")
Producttype.create(name: "headbands")
Producttype.create(name: "beanie")
Category.create(name: "shoes")
Category.create(name: "compression")
Category.create(name: "accessories")
Category.create(name: "apparel")
Category.create(name: "polo")
Sport.create(name: "running")
Sport.create(name: "soccer")
Sport.create(name: "basketball")
Sport.create(name: "training")
Sport.create(name: "football")
Sport.create(name: "outdoor")
Sport.create(name: "tennis")
Sport.create(name: "skateboarding")
Sport.create(name: "baseball")
Sport.create(name: "weightlifting")
Sport.create(name: "golf")
Sport.create(name: "hockey")
Sport.create(name: "lacrosse")
Sport.create(name: "yoga")
Sport.create(name: "volleyball")
Brand.create(name: "originals")
Brand.create(name: "athletics")
Brand.create(name: "essentials")
Color.create(name: "black")
Color.create(name: "grey")
Color.create(name: "white")
Color.create(name: "red")
Color.create(name: "pink")
Color.create(name: "orange")
Color.create(name: "yellow")
Color.create(name: "green")
Color.create(name: "blue")
Color.create(name: "purple")
Color.create(name: "beige")
Color.create(name: "brown")
Color.create(name: "gold")
Color.create(name: "silver")
Color.create(name: "multicolor")
# User.create(name: 'Mạnh', lastname: 'Nguyễn', email: 'manh11117@gmail.com', password: 'Abc@123456789', password_confirmation: 'Abc@123456789',admin: 'TRUE')
Cart.create
Wish.create

u = '/home/m/adidas/app/assets/images/products'

i = 1
num = 1
while i <= num  do
  p = Product.create(name: 'tubular shadow shoes', gender_id: '1', age_id: '', franchise_id: '18', producttype_id: '', brand_id: '1', category_id: '1', sport_id: '')
  p.variants.create(product_id: p.id, color_id: '1', price: '70', originalprice: '100', sku: 'AQ0886', stock: '1000')
  p.variants.first.avatar.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.hover.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.images.purge
  i+=1
end

i = 2
num = 44
while i <= num  do
  p = Product.create(name: 'tubular shadow shoes', gender_id: '1', age_id: '', franchise_id: '18', producttype_id: '', brand_id: '1', category_id: '1', sport_id: '')
  p.variants.create(product_id: p.id, color_id: '1', price: '70', originalprice: '100', sku: 'AQ0886', stock: '1000')
  p.variants.first.avatar.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.hover.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.images.purge
  i+=1
end

i = 45
num = 93
while i <= num  do
  p = Product.create(name: 'tubular shadow shoes', gender_id: '2', age_id: '', franchise_id: '18', producttype_id: '', brand_id: '1', category_id: '1', sport_id: '')
  p.variants.create(product_id: p.id, color_id: '1', price: '70', originalprice: '100', sku: 'AQ0886', stock: '1000')
  p.variants.first.avatar.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.hover.attach(io: File.open(u+'/'+i.to_s+'/'+i.to_s+'.jpg'), filename: i.to_s+'.jpg', content_type: 'application/jpg')
  p.variants.first.images.purge
  i+=1
end

password = "password"
User.create!(id: 1,
             name:  "Manh",
             lastname:  "Nguyen",
             email: "manh11117@gmail.com",
             password:              password,
             password_confirmation: password,
             admin: true)

User.create!(id: 2,
             name:  "Example User",
             lastname:  "Example User",
             email: "example@railstutorial.org",
             password:              password,
             password_confirmation: password,
             admin: [true, false].sample)

99.times do |n|
  name  = Faker::Name.name
  last_name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(id:  n+3,
               name:  name,
               lastname:  last_name,
               email: email,
               password:              password,
               password_confirmation: password,
               admin: false)
end

#mysql> UPDATE products SET gender_id = 1 WHERE 1 <= id and id <= 44;
