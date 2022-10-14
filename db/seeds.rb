puts "🌱 Seeding spices..."

beanie1, beanie2 = BeanieBaby.create([
    {
        name: "Waddle",
        dob: "12-19-95",
        poem: "Waddle the penguin likes to dress up Every night he wears his tux    When Waddle walks, it never fails He always trips over his tails!",
        retired: true,
        img: "https://beaniepedia.com/beanies/files/2020/11/waddle.jpg"
    }, 
    {
        name: "Hoot",
        dob: "8-9-95",
        poem: "Late to bed, late to rise Nevertheless, Hoot's qutie wise Studies by candlelight, nothing new Like a president, do you know Whoo?",
        retired: true,
        img: "https://beaniepedia.com/beanies/files/2020/09/hoot.jpg"
    }
])

 collector = Collector.create(
    {
        name: "Irene",
        dob: "1998-09-17"
    }
 )
 
 collector.beanie_babies << beanie1 
 collector.beanie_babies << beanie2

puts "✅ Done seeding!"
