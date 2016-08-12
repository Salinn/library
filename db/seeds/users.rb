total_users = 100
users = []

(0...total_users).each do |user_number|
    users.push(
        {
            first_name: Faker::Name.first_name ,
            last_name: Faker::Name.last_name  ,
            email: Faker::Internet.email
        }
    )
end

User.create!(users)