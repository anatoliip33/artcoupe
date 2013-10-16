#encoding: utf-8

# . . .
    material_names = ["ДСП Дуб Феррара чёрно-коричневый (EGGER)", "ДСП Французский Орех (EGGER)", 
    								"ДСП Фино Бронза (EGGER)", "ДСП Ясень Серцевинный (EGGER)", 
    								"ДСП Береза Майнау (EGGER)", "ДСП Дуб натуральный (EGGER)", 
                                                    "Кожзам бордовый узор", "Кожзам бежевый узор", "Кожзам с тиснением какао",
                                                    "Кожзам с тиснением бежевый", "Профиль Шампань матовая", "Профиль Хром матовый",
                                                    "Профиль Венге", "Профиль Золото матовое"]

    prof_names = ["Профиль Шампань матовая", "Профиль Хром матовый", "Профиль Венге", "Профиль Золото матовое"]

    other_names = ["Кожзам бордовый узор", "Кожзам бежевый узор", "Стекло бежевое", "Ротанг",
                                  "Кожзам с тиснением какао", "Кожзам с тиснением бежевый"]



25.times do |i|
  Material.create(
    title: material_names[i % material_names.length], 
    image_url: "color-#{i+1}.jpg",
    )
end

15.times do |i|
  Material.create(
  	title: material_names[i % material_names.length], 
  	image_url: "color-#{i+1}.jpg",
      category: 'dsp' 
  	)
end

4.times do |i|
  Material.create(
    title: prof_names[i % prof_names.length], 
    image_url: "color-#{i+16}.jpg",
    category: 'color prof' 
    )
end

6.times do |i|
  Material.create(
    title: other_names[i % other_names.length], 
    image_url: "color-#{i+20}.jpg",
    category: 'other' 
    )
end


2.times do |i|
  Stack.create({
  name: "stack-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'stacks', "stack-#{i+1}.png"))
  })
end

147.times do |i|
  Filling.create({
  name: "wardrobe-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+1}.jpg"))
  })
end

15.times do |i|
  Filling.create({
  name: "wardrobe-#{i+133}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+133}.jpg")),
  category: 'smallcoupe'
  })
end

25.times do |i|
  Filling.create({
  name: "wardrobe-#{i+108}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+108}.jpg")),
  category: 'mediumcoupe'
  })
end

25.times do |i|
  Filling.create({
  name: "wardrobe-#{i+83}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+83}.jpg")),
  category: 'bigcoupe'
  })
end

5.times do |i|
  Filling.create({
  name: "wardrobe-#{i+78}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+78}.jpg")),
  category: 'biblio'
  })
end

12.times do |i|
  Filling.create({
  name: "wardrobe-#{i+66}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+66}.jpg")),
  category: 'box'
  })
end

10.times do |i|
  Filling.create({
  name: "wardrobe-#{i+56}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+56}.jpg")),
  category: 'onerail'
  })
end

27.times do |i|
  Filling.create({
  name: "wardrobe-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+1}.jpg")),
  category: 'wardrobe'
  })
end

6.times do |i|
  Filling.create({
  name: "wardrobe-#{i+28}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+28}.jpg")),
  category: 'nisha'
  })
end

22.times do |i|
  Filling.create({
  name: "wardrobe-#{i+34}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'fillings', 'wardrobe', "wardrobe-#{i+34}.jpg")),
  category: 'corner'
  })
end

2.times do |i|
  Quality.create({
  name: "quality-#{i+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'qualities', "quality-#{i+1}.png"))
  })
end


61.times do |c|
  Cabinet.create({
  name: "cabinet-#{c+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-#{c+1}.jpg"))
  })
end

39.times do |c|
  Cabinet.create({
  name: "cabinet-#{c+1}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-#{c+1}.jpg")),
  category: '2dors'
  })
end

18.times do |c|
  Cabinet.create({
  name: "cabinet-#{c+40}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-#{c+40}.jpg")),
  category: '3dors'
  })
end

4.times do |c|
  Cabinet.create({
  name: "cabinet-#{c+58}",
  image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-#{c+58}.jpg")),
  category: 'moredors'
  })
end

Cabinet.create({
name: "cabinet-5",
image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-5.jpg")),
category: 'stacks'
})

Cabinet.create({
name: "cabinet-36",
image: File.open(Rails.root.join('test', 'assets', 'images', 'cabinets', "cabinet-36.jpg")),
category: 'stacks'
})



Faq.create(
  question: "На что следует обратить внимание при выборе компании-производителя встроенной мебели?",
  answer: "Первое — на качество установки, аккуратность, точность. Второе — комплектация, т.е. фурнитура, тип обработки торцов панелей дсп. Панели дсп должны крепиться к стене через алюминиевый П-образный монтажный профиль, а не пластиковыми уголками!"
  )

Faq.create(
  question: "Почему встроенный шкаф дороже стандартного?",
  answer: "Потому что намного сложнее в установке, а следовательно и дороже. Но как результат — шкаф идеально вписывается в интерьер, несмотря на неровности стен и геометрические особенности места установки."
  )

Faq.create(
  question: "Сколько времени занимает установка шкафа?",
  answer: "Процесс это трудоёмкий и не терпит ошибок, требует времени. В среднем шкаф шириной 1600 - 1800 мм устанавливается чуть более 1 дня. Диагональный шкаф устанавливается 1,5 - 2,5 дня, в зависимости от количества полок и стоек (ёмкости заполнения)."
  )

Faq.create(
  question: "От чего зависит стоимость встроенного шкафа?",
  answer: "От комплектации — количества полок, стоек, ящиков а также от сложности фасада и материалов применяемых для изготовления фасада. К примеру фасад из стекла с плёнкой дороже фасада из ДСП."
  )

Faq.create(
  question: "Натяжной потолок устанавливать до или после?",
  answer: "Натяжной потолок лучше устанавливать после установки шкафа. Но даже если потолок уже установлен, мы найдём решение для установки шкафа."
  )

Faq.create(
  question: "Какие максимально широкие двери можно изготовить?",
  answer: "1100 мм."
  )

Faq.create(
  question: "Можно ли при необходимости снять двери со шкафа?",
  answer: "Да, конечно это делается очень просто."
  )

Faq.create(
  question: "А когда устанавливать плинтуса в шкафу?",
  answer: "Мы их сами устанавливаем после установки шкафа."
  )

Faq.create(
  question: "У меня сейчас формируют проём для шкафа как проверить ровность стен?",
  answer: "Точным (проверенным) уровнем или отвесом."
  )

Faq.create(
  question: "У меня достаточно узкая прихожая, но я хочу шкаф-купе, как быть?",
  answer: "Мы устанавливаем шкафы разной глубины вплоть до 250 мм (для библиотек), в этом случае есть решение с однорельсовой системой."
  )

Faq.create(
  question: "Какой глубины обычно делают шкафы-купе?",
  answer: "650 мм."
  )

Faq.create(
  question: "Я хочу установить шкаф в комнату и перегородку, чтобы она заходила за шкаф, так можно сделать?",
  answer: "Да, такие конструкции мы делаем."
  )

Faq.create(
  question: "Какая толщина у системы раздвижных дверей?",
  answer: "83 мм."
  )

Faq.create(
  question: "Возможен ли вариант 2-х стороннего шкафа?",
  answer: "Да, конечно."
  )

Faq.create(
  question: "Не могу определиться с цветом профиля, какой лучше выбрать?",
  answer: "Как правило цвет профиля подбирается к цвету элементов интерьера (ручки в дверях, вставки в мебели, осветительные приборы), также и в сочетании с обоями / цветом стен."
  )

Faq.create(
  question: "В стоимость заказа входит установка?",
  answer: "Да, конечно, стоимость рассчитывается с установкой и доставкой."
  )

Faq.create(
  question: "Вы предоставляете гарантию на шкафы?",
  answer: "Гарантия на установленную мебель - 2 года."
  )
# . . .