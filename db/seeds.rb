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

5.times do |n|
  Farmer.all.each do |farmer|
    farmer.topics.create!(
      title: "タイトル#{n + 1}",
      body: "テキストテキストテキスト#{n + 1}",
      topic_image: File.open('./app/assets/images/topic_image.jpg')
      )
  end
end
