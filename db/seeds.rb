# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



5.times do |n|
  EndUser.create!(
    email: "abcd#{n + 1}@abcd.com",
    name: "テスト太郎#{n + 1}",
    password: "123456#{n + 1}",
    profile_image: File.open('./app/assets/images/end_user_image.jpg')
  )
end

Farmer.create!(
  email: 'aaa@aaa.com',
  farm_name: 'テスト農園',
  name: 'テスト二郎',
  region: 1,
  postcode: '123456',
  prefecture: '福島県',
  address: 'テストテスト',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 2,
  password: '654321',
  farm_image: File.open('./app/assets/images/farm_image/image1.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image1.jpg')
)

Farmer.create!(
  email: 'bbb@bbb.com',
  farm_name: 'テスト2農園',
  name: 'テスト三郎',
  region: 4,
  postcode: '123456',
  prefecture: '滋賀県',
  address: 'テストテスト',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 3,
  password: '121212',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'ccc@ccc.com',
  farm_name: '児玉農園',
  name: '児玉 健',
  region: 0,
  postcode: '123456',
  prefecture: '北海道',
  address: '北海道釧路郡釧路町桂木1-294-20',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 0,
  password: '000000',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'ddd@ddd.com',
  farm_name: '角田農園',
  name: '角田 真一	',
  region: 1,
  postcode: '123456',
  prefecture: '宮城県',
  address: "宮城県気仙沼市上東側根511-16",
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 1,
  password: '111111',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'eee@eee.com',
  farm_name: '瀧口農園',
  name: '瀧口 一也',
  region: 2,
  postcode: '123456',
  prefecture: '栃木県',
  address: '栃木県那須塩原市鳥野目998-8',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 2,
  password: '222222',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'fff@fff.com',
  farm_name: '永尾農園',
  name: '永尾 正雄',
  region: 3,
  postcode: '123456',
  prefecture: '愛知県',
  address: '愛知県豊田市阿蔵町956-13',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 3,
  password: '333333',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'ggg@ggg.com',
  farm_name: '寺沢農園',
  name: '寺沢 佑一',
  region: 4,
  postcode: '123456',
  prefecture: '京都府',
  address: '京都府京都市西京区御陵大原911-20',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 4,
  password: '444444',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'hhh@hhh.com',
  farm_name: '戸室農園',
  name: '戸室 憲之',
  region: 5,
  postcode: '123456',
  prefecture: '愛媛県',
  address: '愛媛県今治市菊間町種717-3',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 0,
  password: '555555',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)
Farmer.create!(
  email: 'iii@iii.com',
  farm_name: '前北農園',
  name: '前北 忠博',
  region: 6,
  postcode: '123456',
  prefecture: '福岡県',
  address: '福岡県北九州市小倉南区徳力1-496-18',
  telephone_number: '0000000000',
  introduction: 'テストテストテストテストテストテスト',
  category: 1,
  password: '666666',
  farm_image: File.open('./app/assets/images/farm_image/image2.jpg'),
  profile_image: File.open('./app/assets/images/farmer_image/image2.jpg')
)

5.times do |n|
  Farmer.all.each do |farmer|
    farmer.topics.create!(
      title: "タイトル#{n + 1}",
      body: "テキストテキストテキスト#{n + 1}",
      topic_image: File.open('./app/assets/images/topic_image.jpg')
      )
  end
end
