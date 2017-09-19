User.create!(email: 'user@example.com', nickname: 'UOne', name: 'User One', password: "12345678")
puts User.count.to_s + ' users created'

LinkedInContact.create!(url_address: "https://www.linkedin.com/in/noel-delgado/")
puts LinkedInContact.count.to_s + ' linked_in_contact created'
