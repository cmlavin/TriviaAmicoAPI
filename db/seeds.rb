10.times do
  username = Faker::Internet.user_name
  password = Faker::Internet.password(8, 16)
  email = Faker::Internet.email
  User.create(username: username, password: password, email: email)
end

categories = ["Comics", "Sports", "Geography", "Art", "Music", "Computers", "Film", "Politics", "Video Games", "Board Games"]
categories.each do |category|
  Game.create(category: category, difficulty: "easy", num_questions: 4)
end

numbers = (1..10).to_a
numbers.each do |num|
  Score.create(user_id: num, score: 400, game_id: num)
end
