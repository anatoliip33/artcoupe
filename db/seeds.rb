#encoding: utf-8

Product.delete_all
# . . .
    material_names = ["ДСП Дуб Феррара чёрно-коричневый (EGGER)", "ДСП Французский Орех (EGGER)", 
    								"ДСП Фино Бронза (EGGER)", "ДСП Ясень Серцевинный (EGGER)", 
    								"ДСП Береза Майнау (EGGER)", "ДСП Дуб натуральный (EGGER)"]

15.times do |i|
  Material.create(
  	title: material_names[i % material_names.length], 
  	image_url: "color-#{i+1}.png", 
  	)
end

2.times do |i|
  Stack.create({
  name: "stack-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'stacks', "stack-#{i+1}.png"))
  })
end

6.times do |i|
  Filling.create({
  name: "wardrobe-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+1}.jpg"))
  })
end

2.times do |i|
  Quality.create({
  name: "quality-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'qualities', "quality-#{i+1}.png"))
  })
end

6.times do |c|
  Cabinet.create({
  name: "cabinet-#{c+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-#{c+1}.png"))
  })
end

# . . .