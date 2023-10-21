# add members to the database
Member.create!(
        first_name: "John",
        middle_name: "Doe",
        last_name: "Smith",
        sex: "Male",
        age: 30,
        email: "john.doe@example.com",
        phone: "123-456-7890",
        dob: Date.new(1991, 1, 1),
        photo: "https://example.com/john_doe.jpg",
        address: "123 Main St",
        city: "Anytown",
        landmark: "Near the park",
        job_area: "Technology",
        job_type: "Full-time",
        job_title: "Software Engineer",
        job_description: "Develop and maintain software applications",
)

# create 10 more members
10.times do |i|
    Member.create!(
        first_name: "Member#{i+2}",
        middle_name: "Middle#{i+2}",
        last_name: "Last#{i+2}",
        sex: ["Male", "Female"].sample,
        age: rand(18..60),
        email: "member#{i+2}@example.com",
        phone: "555-555-5555",
        dob: Date.new(rand(1960..2003), rand(1..12), rand(1..28)),
        photo: "https://example.com/member#{i+2}.jpg",
        address: "#{i+2} Main St",
        city: "Anytown",
        landmark: "Near the park",
        job_area: ["Technology", "Finance", "Marketing", "Sales"].sample,
        job_type: ["Full-time", "Part-time", "Contract"].sample,
        job_title: "Job Title #{i+2}",
        job_description: "Job Description #{i+2}",
    )
end
