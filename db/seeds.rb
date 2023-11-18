5.times do |i|
  Patient.create!(
    full_name: "Patient ##{i}",
    date_birth: Date.today - rand(18..80).years,
    phone: rand(10**10),
    email: "patient#{i}@example.com"
  )
end