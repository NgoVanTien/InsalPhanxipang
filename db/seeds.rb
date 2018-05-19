
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
(1..20).to_a.each do |item|
Bill.create(
  start_renting: "27/09/2018",
  end_renting: "22/11/2018",
  total: "39.000",
  status:"hết hạn",
  user_id: 1)
 end

(1..200).to_a.each do |item|
    Product.create(
        name: "hihi",
        price: item,
        renting_fee: "15.000",
        # image:"ccccc",
        category_id: 1)
  end
(1..20).to_a.each do |item|
bill = Bill.create(
        start_renting: "27/09/2018",
        end_renting: "22/11/2018",
        total: "39.000",
        status:"hết hạn",
        user_id: 1)
 end
# Create bill
bill = Bill.create(start_renting: "2016-10-05", end_renting: "", total: "1234", status: "0", user_id: 2)
r = Random.new
arr = ["http://aocuoibangchau.vn/multidata/ao-cuoi-bang-chau-1.jpg",
  "http://toplist.vn/images/800px/anh-vien-ao-cuoi-valentine-155953.jpg",
   "http://chupanhcuoigiare.net/wp-content/uploads/2017/12/khach-san-thang-loi.jpg",
   "http://www.marry.vn/wp-content/uploads/users/452080/2016/08/19/album-anh-cuoi-dep-nhat-2016-h-6.jpg",
   "http://www.marry.vn/wp-content/uploads/2017/09/15/r5.png"]
(1..100).to_a.each do |item|
  Product.create(name: "name#{item}", price: item, renting_fee: "122", image_file_name: arr[r.rand(0...4)], category_id: r.rand(1..3))
end
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
ProductBill.create(
  renting_quantity: 2,
  renting_fee_product: "30000",
  name_product: "Vay xe ta",
  product_id: 1,
  bill_id: 1,
  size_id: 1,
)
