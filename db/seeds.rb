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

Stack.create({
name: 'Stack #1',
image: File.open(Rails.root.join('test', 'assets', 'images', 'stacks', 'stack1.png'))
})


6.times do |i|
	Filling.create(
		image_url: "wardrobe-#{i+1}.jpg"
		)
end

# . . .