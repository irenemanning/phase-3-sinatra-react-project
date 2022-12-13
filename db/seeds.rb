puts "🌱 Seeding spices..."

beanie1, beanie2, beanie3, beanie4 = BeanieBaby.create([
    {
        name: "Waddle",
        dob: "1995-12-19",
        poem: "Waddle the penguin likes to dress up\r\nEvery night he wears his tux\r\nWhen Waddle walks, it never fails\r\nHe always trips over his tails!",
        pellets: "P.V.C.",
        img: "https://beaniepedia.com/beanies/files/2020/11/waddle.jpg"
    }, 
    {
        name: "Hoot",
        dob: "1995-08-09",
        poem: "Late to bed, late to rise\r\nNevertheless, Hoot's qutie wise\r\nStudies by candlelight, nothing new\r\nLike a president, do you know Whoo?",
        pellets: "P.V.C.",
        img: "https://beaniepedia.com/beanies/files/2020/09/hoot.jpg"
    },
    {
        name: "Swirly",
        dob: "1999-03-10",
        poem: "Carefully traveling, leaving a trail\r\n I\’m not very fast, for I am a snail\r\nAlthough I go my own plodding pace\r\n Slow and steady, wins the race!",
        pellets: "P.E.",
        img: "https://beaniepedia.com/beanies/files/2020/03/swirly.jpg"
    },
    {
        name: "Patti",
        dob: "1993-01-06",
        poem: "Ran into Patti one day while walking\r\nBelieve me she wouldn\’t stop talking\r\nListened and listened to her speak\r\nThat would explain her extra large beak!",
        pellets: "P.V.C.",
        img: "https://beaniepedia.com/beanies/files/2012/10/patti.jpg"
    }
])

 collector1, collector2, collector3  = Collector.create([
    {
        name: "Irene",
        dob: "1998-09-17"
    },
    {
        name: "Ricky Martin",
        dob: "1971-12-24"
    },
    {
        name: "Madonna",
        dob: "1958-08-16"
    }
 ]
    
 )
 
 collector1.beanie_babies << beanie1 
 collector1.beanie_babies << beanie2
 collector3.beanie_babies << beanie3
 collector3.beanie_babies << beanie4

puts "✅ Done seeding!"
