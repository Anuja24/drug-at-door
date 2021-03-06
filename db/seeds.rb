# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(id:1,first_name:"Anuja", last_name:"Raut" ,role:"SuperAdmin", mobile_number: "8275602681", email: "anujaraut24@gmail.com", password: "1810deven", created_at: Time.now, updated_at: Time.now)
SuperAdmin.create(first_name:"Anuja", last_name:"Raut", mobile_no:"8275602681", email_id:"anujaraut24", user_id:1)
SectionType.create(id:1, section_type_name:"Medicines", section_type_description:"Medicines", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:2, section_type_name:"Diabetics", section_type_description:"Diabetics", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:3, section_type_name:"Baby & Mother", section_type_description:"Baby & Mother", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:4, section_type_name:"Personal", section_type_description:"Personal", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:5, section_type_name:"Otc", section_type_description:"Otc", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:6, section_type_name:"Nutrition", section_type_description:"Nutrition", created_at: Time.now, updated_at: Time.now)
SectionType.create(id:7, section_type_name:"Surgical & Devices", section_type_description:"Surgical & Devices", created_at: Time.now, updated_at: Time.now)
Section.create(section_name:"Allopathic Medicine", section_description:"Allopathic Medicine", section_type_id:1, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Ayurvedic Medicine", section_description:"Ayurvedic Medicine", section_type_id:1, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Homeopathic Medicine", section_description:"Homeopathic Medicine", section_type_id:1, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Food & Beverage", section_description:"Food & Beverage", section_type_id:2, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Nutrition", section_description:"Nutrition", section_type_id:2, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Monitoring Devices", section_description:"Monitoring Devices", section_type_id:2, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Baby Bath & Skin", section_description:"Baby Bath & Skin", section_type_id:3, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Baby Nutrition", section_description:"Baby Nutrition", section_type_id:3, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Baby Diapering", section_description:"Baby Diapering", section_type_id:3, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Baby feeding & Nursing", section_description:"Baby feeding & Nursing", section_type_id:3, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Baby Massage", section_description:"Baby Massage", section_type_id:3, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Sexual Wellness", section_description:"Sexual Wellness", section_type_id:4, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Skin Care", section_description:"Skin Care", section_type_id:4, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Oral Care", section_description:"Oral Care", section_type_id:4, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Hair Care", section_description:"Hair Care", section_type_id:4, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Womens care", section_description:"Womens care", section_type_id:4, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"First Aid", section_description:"First Aid", section_type_id:5, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Health care", section_description:"Health care", section_type_id:5, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Men Nutrition", section_description:"Men Nutrition", section_type_id:6, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Women Nutrition", section_description:"Women Nutrition", section_type_id:6, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Surgical Accessories", section_description:"Surgical Accessories", section_type_id:7, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Blood Pressure Monitors", section_description:"Blood Pressure Monitors", section_type_id:7, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Diabetics Monitors", section_description:"Diabetics Monitors", section_type_id:7, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Weighing Scales", section_description:"Weighing Scales", section_type_id:7, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Thermometer", section_description:"Thermometer", section_type_id:7, created_at:Time.now, updated_at:Time.now)
Section.create(section_name:"Orthocare Accessories", section_description:"Orthocare Accessories", section_type_id:7, created_at:Time.now, updated_at:Time.now)
ProductForm.create(form_name:"Aerosol", form_description:"Aerosol", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Bag", form_description: "Bag", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Balm", form_description: "Balm", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Bandage", form_description: "Bandage", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Box", form_description: "Box", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Buds", form_description: "Buds", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Capsule", form_description: "Capsule", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Chewable Tab", form_description: "Chewable Tab", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Churna", form_description: "Churna", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Conditioner", form_description: "Conditioner", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Condom", form_description: "Condom", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Cookies", form_description: "Cookies", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Cotton", form_description: "Cotton", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Cream", form_description: "Cream", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Crepe", form_description: "Crepe", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Deo", form_description: "Deo", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Dhoopan", form_description: "Dhoopan", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Diaper Rash Cream", form_description: "Diaper Rash Cream", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Diskettes", form_description: "Diskettes", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Dispersible Tab", form_description: "Dispersible Tab", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Drop", form_description: "Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Dry Syrup", form_description: "Dry Syrup", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Ear Drop", form_description: "Ear Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Enema", form_description: "Enema", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Expectorant", form_description: "Expectorant", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Eye Drop", form_description: "Eye Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Eye Ointment", form_description: "Eye Ointment", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Eye/Ear Drop", form_description: "Eye/Ear Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Face Wash", form_description: "Face Wash", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Foam", form_description: "Foam", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Food", form_description: "Food", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Form", form_description: "Form", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Gauze", form_description: "Gauze", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Gel", form_description: "Gel", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Granules", form_description: "Granules", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Gummies", form_description: "Gummies", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Guti", form_description: "Guti", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "I.V.", form_description: "I.V.", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Inhaler", form_description: "Inhaler", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Injection", form_description: "Injection", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Intravenous", form_description: "Intravenous", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Jelly", form_description: "Jelly", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Kadha", form_description: "Kadha", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Kajal", form_description: "Kajal", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Kidtab", form_description: "Kidtab", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Kneecap", form_description: "Kneecap", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Liniment", form_description: "Liniment", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Lip guard", form_description: "Lip guard", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Liquid", form_description: "Liquid", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Lotion", form_description: "Lotion", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Lozenges", form_description: "Lozenges", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Macin", form_description: "Macin", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Malam", form_description: "Malam", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Mouthwash", form_description: "Mouthwash", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Nasal Drop", form_description: "Nasal Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Nasal Spray", form_description: "Nasal Spray", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Needle", form_description: "Needle", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Nipple", form_description: "Nipple", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Oil", form_description: "Oil", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Ointment", form_description: "Ointment", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Oral Drop", form_description: "Oral Drop", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Pad", form_description: "Pad", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Paste", form_description: "Paste", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Patch", form_description: "Patch", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Pen", form_description: "Pen", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Pill", form_description: "Pill", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Plastic", form_description: "Plastic", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Powder", form_description: "Powder", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Rotacap", form_description: "Rotacap", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Sachet", form_description: "Sachet", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Serum", form_description: "Serum", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Shampoo", form_description: "Shampoo", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Skin Ointment", form_description: "Skin Ointment", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Skin Patch", form_description: "Skin Patch", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Smookies", form_description: "Smookies", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Soap", form_description: "Soap", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Solution", form_description: "Solution", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Spray", form_description: "Spray", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Strip", form_description: "Strip", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Sunscreen", form_description: "Sunscreen", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Suppository", form_description: "Suppository", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Surgical", form_description: "Surgical", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Suspension", form_description: "Suspension", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Syrup", form_description: "Syrup", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Tablet", form_description: "Tablet", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Thermometer", form_description: "Thermometer", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Torch", form_description: "Torch", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Vaccine", form_description: "Vaccine", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Vaginal Tablet", form_description: "Vaginal Tablet", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Vaginal Wash", form_description: "Vaginal Wash", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Vial", form_description: "Vial", created_at: Time.now, updated_at: Time.now)
ProductForm.create(form_name: "Wipe", form_description: "Wipe", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Bottle", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Strip", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Sachet", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Ampoule", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Bale", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Box", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Inhaler", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Jar", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Kit", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Napkin", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Packet", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Roll", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Respule", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Set", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Tablet", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Tin", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Tube", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Unit", created_at: Time.now, updated_at: Time.now)
Pack.create(pack_name: "Vial", created_at: Time.now, updated_at: Time.now)
AddressType.create(type_name: "Home", created_at: Time.now, updated_at: Time.now)
AddressType.create(type_name: "Office", created_at: Time.now, updated_at: Time.now)
AddressType.create(type_name: "Other", created_at: Time.now, updated_at: Time.now)
Available.create(available_name: "Yes", created_at: Time.now, updated_at: Time.now)
Available.create(available_name: "No", created_at: Time.now, updated_at: Time.now)
PrecRequire.create(name: "Yes", created_at: Time.now, updated_at: Time.now)
PrecRequire.create(name: "No", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "MG", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "ML", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "LIT", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "KG", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "GM", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "CM", created_at: Time.now, updated_at: Time.now)
Unit.create(name: "NO'S", created_at: Time.now, updated_at: Time.now)
OrderStatus.create!(name: "In Cart")
OrderStatus.create!(name: "In Progress")
OrderStatus.create!(name: "Shipping")
OrderStatus.create!(name: "Delivered")
OrderStatus.create!(name: "Returned")
OrderStatus.create!(name: "Cancelled")