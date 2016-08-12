total_libraries = 10
libraries = []

(0...total_libraries).each do |library_number|
    libraries.push(
        {
            name: Faker::Company.name
        }
    )
end

Library.create!(libraries)