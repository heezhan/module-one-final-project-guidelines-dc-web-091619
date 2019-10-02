Brand.destroy_all
#Brand
chanel = Brand.find_or_create_by(name: "Chanel")
prada = Brand.find_or_create_by(name: "Prada")
chloe = Brand.find_or_create_by(name: "Chloe")
gucci = Brand.find_or_create_by(name: "Gucci")
valentino = Brand.find_or_create_by(name: "Valentino")
saintlaurent = Brand.find_or_create_by(name: "Saint Laurent")
celine = Brand.find_or_create_by(name: "Celine")
balenciaga = Brand.find_or_create_by(name: "Balenciaga")
coach = Brand.find_or_create_by(name: "Coach")
marcjacobs = Brand.find_or_create_by(name: "Marc Jacobs")
mk = Brand.find_or_create_by(name: "Michael Kors")
tb = Brand.find_or_create_by(name: "Tory Burch")
ks = Brand.find_or_create_by(name: "Kate Spade")
supreme = Brand.find_or_create_by(name: "Supreme")

Customer.destroy_all
#Customer
christinapark = Customer.find_or_create_by(name: "Christina Park", birthday: "01.17.1990", address: "7414 Colshire Dr. Mclean, VA 22102", budget: 800.00)
heejaehan = Customer.find_or_create_by(name: "Heejae Han", birthday: "11.18.1994", address: "1206 Ballantrae Ln. McLean, VA 22101", budget: 600.00)
kaileylee = Customer.find_or_create_by(name: "Kailey Lee", birthday: "05.24.1991", address: "2727 S Quincy St Apt 712, Arlington, VA 22206", budget: 400.00)
sunlee = Customer.find_or_create_by(name: "Sun Lee", birthday: "09.15.1968", address: "2090 Van Tyul Pl. Mclean VA 22102", budget: 200.00)
seungyeonlee = Customer.find_or_create_by(name: "Seungyeon Lee", birthday: "06.15.1968", address: "1206 Ballantrae Ln. McLean, VA 22101", budget: 400.00)
joycejin = Customer.find_or_create_by(name: "Joyce Jin", birthday: "10.28.1989", address: "8312 Wolftrap Rd. Viennam VA 22182", budget: 100.00)
jinlee = Customer.find_or_create_by(name: "Jin Lee", birthday:"08.15.1966", address: "15021 Greymont Dr. Centerville, VA 20120", budget: 100.00)
gracekwon = Customer.find_or_create_by(name: "Grace Kwon", birthday: "12.23.1982", address: "9865 Burke Pond Ct. Burke, VA 22015", budget: 200.00)
daphnemamoulides = Customer.find_or_create_by(name: "Daphne Mamoulides", birthday: "07.01.1990", address: "533A Putnam Ave. #2 Brooklyn, NY 11221", budget: 600.00)
heidialbrecht = Customer.find_or_create_by(name: "Heidi Albrecht", birthday: "04.17.1991", address: "4212 Dartford Dr. Seattle, WA 98101", budget: 800.00)

Handbag.destroy_all
#Handbag
chanel_boybag = Handbag.find_or_create_by(brand: chanel, bag_type: "Boy Bag small", cost: 800)
chanel_caviar = Handbag.find_or_create_by(brand: chanel, bag_type: "Caviar small", cost: 800)
prada_cahier = Handbag.find_or_create_by(brand: prada, bag_type: "Cahier small", cost: 400)
prada_bucketbag = Handbag.find_or_create_by(brand: prada, bag_type: "Nylon Bucket Bag", cost: 400)
chloe_faye = Handbag.find_or_create_by(brand: chloe, bag_type: "Faye small", cost: 400)
chloe_tess = Handbag.find_or_create_by(brand: chloe, bag_type: "Tess small", cost: 400)
gucci_dionysus = Handbag.find_or_create_by(brand: gucci, bag_type: "Gucci Dionysus small", cost: 400)
gucci_marmont = Handbag.find_or_create_by(brand: gucci, bag_type: "Gucci Marmont small", cost: 400)
celine_luggage = Handbag.find_or_create_by(brand: celine, bag_type: "Celine Luggage small", cost: 400)
celine_boxbag = Handbag.find_or_create_by(brand: celine, bag_type: "Celine Box Bag", cost: 400)
coach_tabby = Handbag.find_or_create_by(brand: coach, bag_type: "Coach Tabby", cost: 100)
coach_dreamer = Handbag.find_or_create_by(brand: coach, bag_type: "Coach Dreamer", cost: 100)

#Rental 
rental1 = Rental.find_or_create_by(customer: christinapark, handbag: chanel_boybag)
rental2 = Rental.find_or_create_by(customer: heejaehan, handbag: prada_cahier)
rental3 = Rental.find_or_create_by(customer: heejaehan, handbag: coach_tabby)
rental4 = Rental.find_or_create_by(customer: kaileylee, handbag: coach_dreamer)
