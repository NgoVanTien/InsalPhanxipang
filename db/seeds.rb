# Create User
user = User.create(
  name:"phong",
  password:"12345678",
  email:"admin@insal.com",
  address:"hue",
  phone:"01664304688",
  personal_card: "CMND",
  role:"1")

#Create Size
name_size = ["S", "M", "L", "XL"]
name_size.each do |item|
  Size.create(name: item)
end

#Create Bill
r = Random.new
(1..50).to_a.each do |item|
Bill.create(
  start_renting: "27/09/2018",
  end_renting: "22/11/2018",
  total: r.rand(1..30000),
  status:"hết hạn",
  user_id: 1)
end

#Create Product_size
ProductSize.create(
  color: "red",
  quantity: 3,
  note: "còn hàng",
  product_id: 1,
  size_id: 1
)

#Creat Product_bill
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
