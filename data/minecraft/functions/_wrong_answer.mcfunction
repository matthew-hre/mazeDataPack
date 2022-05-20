execute as @a[nbt={SelectedItem: {id: "minecraft:written_book"}}] run tag @p add book_holder

execute as @a[tag=book_holder] run item replace entity @p weapon.mainhand with minecraft:book

execute as @a[tag=book_holder] run tag @a[tag=book_holder] remove book_holder