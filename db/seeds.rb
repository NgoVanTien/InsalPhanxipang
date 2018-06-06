
#Create User
data_category = ["Ao Dai", "Vest", "Ao Phong", "Quan Dui"]
data_product = ["Váy đuôi cá" , "Váy cưới đuôi mèo", "Váy cưới kim sa"]
# Create User
user = User.create(
  name:"insal",
  password:"12345678",
  email:"admin@insal.com",
  address:"hue",
  phone:"01664304688",
  personal_card: "CMND",
  role:"1")

#Create category
data_category = ["Ao dai", "Vest", "Ao phong"]
data_category.each do |item|
  Category.create(name: item)
end

#Create bill
r = Random.new
(1..50).to_a.each do |item|
Bill.create(
  start_renting: "27/09/2018",
  end_renting: "22/11/2018",
  total: r.rand(1..30000),
  status:"hết hạn",
  user_id: 1)
 end

(1..30).to_a.each do |item|
    Product.create(
        name: "hihi#{item}",
        price: item,
        renting_fee: "15.000",
        # image:"ccccc",
        category_id: 1)
  end
r = Random.new

size = Size.create(
  name:"XL"
)
ProductSize.create(
  color: "red",
  quantity: 3,
  note: "còn hàng",
  product_id: 1,
  size_id: 1
)
(1..200).to_a.each do |item|
ProductBill.create(
  renting_quantity: 2,
  renting_fee_product: "30000",
  name_product: "Vay xe ta",
  product_id: r.rand(1...20),
  bill_id: r.rand(1...20),
  size_id: 1,
)
 end
