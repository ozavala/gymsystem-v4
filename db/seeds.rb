
gym = Gymsite.create!(
              name: "Round One",
              legal_id: '0912345678-001',
              description: "Centro Comercial La torre. Area 80 m2. Capacidad Max 15 alumnos por hora. Horario lunes a viernes",
              street_address: "Centro Comercial 'La Torre', tercer piso, local # 38" ,
              city: 'Samborondón',
              state: 'Guayas',
              country: 'Ecuador',
              zip: '092301',
              phone: '0991234567',
              phone_type: nil,
              email:  'infolatorre@roundone.com',
              logo: 'assets/images/icon-logo-fer1.jpg',
              from_date: '2019-02-11',
              to_date: nil
            )
puts "Created a GymSite"



gym.users.create!(
  first_name: 'Fernando',
  last_name: 'Zavala',
  phone: Faker::PhoneNumber.cell_phone,
  email: 'ferzagi@roundone.com',
  avatar: nil,
  password: 'password',
  password_confirmation: 'password',
  is_admin: true
)

gym.members.create(
  first_name: 'Julio',
  last_name: 'Fuertes',
  email: 'jfuertes@example.com',
  password_digest: 'password',
  street_address: 'Lomas al Sol',
  city: 'Guayaquil',
  state: 'Guayas',
  zip: ' 098765',
  phone: '09996765443 ',
  # birthday:
  # is_active:
  # avatar:
  # notes:
  # from_date:
  # to_date:
  # level:
  # membership_type:
  # membership_price:
  # source:
)
