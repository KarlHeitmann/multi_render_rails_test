# HACK: Una alternativa para escribir este seeds.rb sin destruir el contenido de las tablas
# al inicio de este archivo, es de usar el seed con `rails db:reset`.
# Este comando lo que hace es un drop de la BD, un create, y luego CARGA EL  schema.rb, sin pasar por las migraciones.
# por último, este archivo carga las seeds.rb. Como `rails db:reset` hace el drop de la DB, no es necesario
# eliminar los datos de las tablas al principio del seeds.rb

color_azul = Color.create!(nombre: "Azul")
color_roja = Color.create!(nombre: "Roja")
color_amarilla = Color.create!(nombre: "Amarilla")

detonador_acme =  Product.create!(nombre: "Detonador ACME", descripcion: "Detonador para poder capturar al Correcaminos", image_url: "detonador_acme.jpg")

polera = Product.create!(nombre: "Polera", descripcion: "Linda polera para pasar el verano")


ProductColor.create(color: color_azul,     product: polera, extra: "Variante azul de la polera",     image_url: "polera_azul.jpg")
ProductColor.create(color: color_roja,     product: polera, extra: "Variante roja de la polera",     image_url: "polera_roja.jpg")
ProductColor.create(color: color_amarilla, product: polera, extra: "Variante amarilla de la polera", image_url: "polera_amarilla.jpg")


