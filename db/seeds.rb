unless User.exists?(email: "admin@ticketee.com")
  User.create!(email: "admin@ticketee.com", password: "password", admin: true)
end

unless User.exists?(email: "viewer@ticketee.com")
  User.create!(email: "viewer@ticketee.com", password: "password")
end

["Sublime Text 3", "Internet Explorer"].each do |name|
  unless Project.exists?(name: name)
    Project.create!(name: name, description: "A sample project about #{name}")
  end  
end
Bike.create(model: 'giant',
description:
%{<p>
bicicleta para pasear
</p>},
image_url: 'giant.jpg',
price: 260.000,
rin: 7
)
Bike.create(model: 'choper',
description:
%{<p>
bicicleta choper
</p>},
image_url: 'chopper.jpg',
price: 300.000,
rin: 7
)
Bike.create(model: 'doble',
description:
%{<p>
bicicleta para dos personas
</p>},
image_url: 'doble.jpeg',
price: 300.000,
rin: 7
)