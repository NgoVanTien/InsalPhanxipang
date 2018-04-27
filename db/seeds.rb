data_category = ["Ao dai", "Vest", "Ao phong"]
user = User.create( 
    name:"insal", 
    password:"12345678", 
    email:"admin@insal.com",  
    address:"hue", 
    phone:"01664304688", 
    personal_card: "CMND", 
    role:"1")
Category.create( name: "abc")
bill = Bill.create(
    start_renting: "27/09/2018", 
    end_renting: "22/11/2018", 
    total: "39.000", 
    status:"hết hạn", 
    user_id: user.id) 
data_category.each do |item|
    Category.create(name: item)
end
(1..200).to_a.each do |item|
    Product.create( 
        name: "hihi", 
        price: item, 
        renting_fee: "122", 
        image:"ccccc", 
        category_id: 1)
  end
(1..20).to_a.each do |item|
    Bill.create(
        start_renting: "27/09/2018", 
        end_renting: "22/11/2018", 
        total: "39.000", 
        status:"hết hạn", 
        user_id: 1)
end
