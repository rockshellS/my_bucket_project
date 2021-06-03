# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Adventure.destroy_all
UserAdventure.destroy_all


User.create(userName: "Rachelle", city:"Chicago", password:"abc")
User.create(userName: "Evans", city:"Chicago", password:"abc")
User.create(userName: "Alison", city:"Chicago", password:"abc")
User.create(userName: "Eric", city:"East Lansing", password:"abc")
User.create(userName: "Russ", city:"Picnkney", password:"abc")
User.create(userName: "Hilery", city:"Brighton", password:"abc")
User.create(userName: "Heather", city:"Portland", password:"abc")
User.create(userName: "Brandon", city:"Mexico City", password:"abc")


Adventure.create(title:"Participate in the Holi Festival in India", location: "India", description: "The festival of love, Holi, is celebrated in the springtime and is the most vibrantly coloured bucket list experience to add to your list.", image: "https://user-images.githubusercontent.com/61843976/112371899-200ebe00-8cad-11eb-8782-8882a334211d.jpg")
  

Adventure.create(title:"Take a gondola ride through the canals of Venice", location: "Venice", description: "Venice really is the dream. Explore the canals by gondola with your charming Italian captain, and top it off with all the gelato.", image: "https://user-images.githubusercontent.com/61843976/112371018-1c2e6c00-8cac-11eb-9daa-ded31231597c.jpg")
   

Adventure.create(title:"Swim in the Blue Lagoon in Iceland", location: "Iceland", description: "You don't need to know how to swim to visit the Blue Lagoon. There are many areas where the water is shallow enough that it doesn't pose a danger to non-swimmers. At the edges of the lagoon, the depth less than 0.8m/2.6ft—perfect for lounging and relaxing. The further into the water you go, the deeper it gets.", image: "https://user-images.githubusercontent.com/61843976/112371089-36684a00-8cac-11eb-8354-225da3585596.jpg")
    

Adventure.create(title:"Witness an active volcano",location: "Bali, Peru or Hawaii", description: "You can see volcanic steam in places like Ubud in Bali or Colca Canyon in Peru, but seeing the flowing lava IRL is insane. Check out Hawaii’s Big Island for five (!) active volcanos.", image: "https://user-images.githubusercontent.com/61843976/112372263-8f84ad80-8cad-11eb-857b-46ca9fc752ec.jpg")
   

Adventure.create(title:"Run with the bulls in Pamplona, Spain", location: "Spain", description: "This one’s for all you daredevils out there. Just please be careful, okay?", image: "https://user-images.githubusercontent.com/61843976/112373414-f060b580-8cae-11eb-9d90-ff21155f8743.jpg")
    

Adventure.create(title:"Raise your glass and “Prost” at Oktoberfest in Munich, Germany", location: "Germany", description: "Oktoberfest draws in over 6 million visitors, many from around the world. While the Müncheners are used to the siege of their city after close to 200 beer festivals, good travel etiquette is always appreciated. Find out how to order a beer, sing the Oktoberfest songs, and speak enough German to enjoy the fest.", image: "https://user-images.githubusercontent.com/61843976/112372487-dd011a80-8cad-11eb-8f6e-915a83c4b350.jpg")
    

Adventure.create(title:"Witness the northern lights", location: "Norway", description: "Witnessing the northern lights is a transformational bucket-list experience that many people wait years—even a lifetime—to see, since the conditions need to be perfect for this spectacular display to take place. But here’s the good news: The time is right to get a glimpse of the aurora borealis. Thanks to longer hours of darkness and clear night skies, December through March is usually the best time to observe this elusive natural phenomenon (though you can sometimes see the northern lights starting as early as August).", image: "https://user-images.githubusercontent.com/61843976/112369331-12a40480-8caa-11eb-999b-e23f73eed34e.jpg")
   

Adventure.create(title:"Check out the Pyramids of Giza in Egypt", location: "Egypt", description: "Just please don’t climb to the top and enjoy an “adult cuddle”, like these people did…", image: "https://user-images.githubusercontent.com/61843976/112372737-2a7d8780-8cae-11eb-80a3-eb11905f1acd.jpg")
    

Adventure.create(title:"Marvel at the Hong Kong skyline", location: "Hong Kong", description: "Hong Kong’s skyline is a dancing spectacle of twinkling lights, and it’s something that needs to be seen to be believed.", image: "https://user-images.githubusercontent.com/61843976/112374125-b8a63d80-8caf-11eb-80dc-a9dc62889318.jpg")
    

Adventure.create(title:"Go skiing in the Alps", location: "Central Europe", description: "Fresh pow-pow, epic views, that European charm", image: "https://user-images.githubusercontent.com/61843976/112374258-dffd0a80-8caf-11eb-9ae6-321bc47df06c.jpg")
  

Adventure.create(title:" Trek through rice fields in Vietnam, Indonesia or the Philippines",location: "Vietnam, Indonesia, or Philippines", description: "Did you know these terraces are often called the Eighth Wonder of the World? From the distance, the beautiful terraces look like a ladder with thousand steps toward the sky. The large rice fields are not only supplied food for the local but also provide a breathtaking natural painting for travelers.", image: "https://user-images.githubusercontent.com/61843976/112372823-46812900-8cae-11eb-9873-27cd15d7dc20.jpg")
    

Adventure.create(title:"Island hop in Greece", location: "Greece", description: "Santorini, Mykonos, Ios… we’re coming for you. Start pouring the ouzo.", image: "https://user-images.githubusercontent.com/61843976/112373330-d6bf6e00-8cae-11eb-87de-0f76c4c8f429.jpg")
    

Adventure.create(title:"Spend a night in an overwater bungalow", location: "Maldives", description: "Who can resist the allure of an overwater bungalow? Everything about it spells romantic, off-the-grid seclusion, from the thatched roofs and wraparound terraces to outdoor showers and spellbinding views of the azure waters. We traveled to Tahiti, Fiji, Bora Bora and beyond in search of the best overwater bungalows. Here's what we found.", image: "https://user-images.githubusercontent.com/61843976/112372599-015cf700-8cae-11eb-9f1e-03f2270e9768.jpg")
    

Adventure.create(title:"Party at Carnival in Brazil", location: "Brazil", description: "Blocos are groups of individuals who plan street parties during the Carnival in Rio de Janeiro. Their parties are much more casual than the parades in the Sambadrome. Each Bloco writes a theme song and has a band to play the Samba music.", image: "https://user-images.githubusercontent.com/61843976/112369823-a7a6fd80-8caa-11eb-9717-dcc148367a3b.jpg")
    

Adventure.create(title:"Dive the Great Blue Hole in Belize",location: "Belize", description: "The Great Blue Hole is a giant marine sinkhole off the coast of Belize. It lies near the center of Lighthouse Reef, a small atoll 70 km (43 mi) from the mainland and Belize City. The hole is circular in shape, 318 m (1,043 ft) across and 124 m (407 ft) deep.", image: "https://user-images.githubusercontent.com/61843976/112374503-2eaaa480-8cb0-11eb-8749-4fff82319a36.jpg")
   

Adventure.create(title:"Cruise through Ha Long Bay in Vietnam", location: "Vietnam", description: "The emerald waters and limestone islands are absolutely breathtaking.  Emerald waters is one of the many features that make Ha Long Bay Vietnam a must see. ... The bay has some 1,600 islands and islets, most of which are uninhabitated and unaffected by humans. The islands and islets are limestone, and they create a breathtaking view with many pillars rising from the waters.", image: "https://user-images.githubusercontent.com/61843976/112371372-87783e00-8cac-11eb-8f27-e0b1f2f9d02f.jpg")
    

Adventure.create(title:"Encounter a Komodo Dragon at Komodo National Park", location: "Indonesia", description: "What do you do if you encounter a Komodo dragon? Fortunately, the komodo dragon can only run straight ahead. Thus if you run in a zigzag pattern then the dragon will rapidly give up on the chase because it is an awkward motion to him. If you see a (traditional wooden) stilted house, immediately climb up the stairs because the komodo cannot do that", image: "https://user-images.githubusercontent.com/61843976/112372125-619f6900-8cad-11eb-89cb-a8f40a5f1a0b.jpg")
    

Adventure.create(title:"Go wine tasting in the world’s best vineyards", location:"Napa, Tuscany, or Cape Town", description: "Hit up the iconic vineyards of Napa, Tuscany, Cape Town, or wherever your thirsty taste buds take you.", image: "https://user-images.githubusercontent.com/61843976/112374344-fa36e880-8caf-11eb-806a-1e3df20edf21.jpg")
   

Adventure.create(title:"Catch a sunset in Oia, Santorini", location: "Santorini", description: "The northern village of Oia (pronounced “ee-a”) is undoubtedly the most popular place to watch the sunset in Santorini. One prime spot can be found near the old castle to the west, overlooking the iconic blue domes of the Agios Spyridonas and Anastaseos churches in the middle of town.", image: "https://user-images.githubusercontent.com/61843976/112373912-7846bf80-8caf-11eb-8ffd-fbe9abcde085.jpg")
    

Adventure.create(title:"Go trekking in Patagonia", location: "Argintina", description: "For views unlike anywhere else in the world. Embark on the very classic multi-day pilgrimage route through one of the most stunning regions of Patagonia. Located in the heart of Torres Del Paine National Park in Chile, the W-Trek certainly will not disappoint. The hike itself viewed on a map is in the shape of a “W”. On this well-trodden rite of passage, you will find glaciers, giant jagged-edged sedimentary peaks, wildlife, grasslands, wind struck flora, beautiful forests, and blazing blue lakes. This jaw-dropping hike is popular for a reason and is known to many as one of the best hikes in the world. Come see what this magical gem smothered in the middle of the Andean mountain range is all about!", image: "https://user-images.githubusercontent.com/61843976/112371491-aa0a5700-8cac-11eb-8f29-129826b991b5.jpg")
    

Adventure.create(title:"Go to the hottest place in the world", location: "Ethiopia", description: "The Danakil Depression is the northern part of the Afar Triangle or Afar Depression in Ethiopia, a geological depression that has resulted from the divergence of three tectonic plates in the Horn of Africa. It really does look like a psychedelic neon explosion.", image: "https://user-images.githubusercontent.com/61843976/112370861-e6898300-8cab-11eb-8105-93c1b9beb8da.jpg")
    

Adventure.create(title:"Ride a camel through the desert", location: "Morocco, Dubia, or Mongolia ", description: "Whether you’re in Morocco, Dubai, or Mongolia, the connection that you feel to your animal and the spectacular scenery during this experience will be something you won’t forget.", image: "https://user-images.githubusercontent.com/61843976/112370478-72e77600-8cab-11eb-883a-5e0a2ee1b8ce.jpg")
    
Adventure.create(title:"Road trip through the Rocky Mountains", location: "Rocky Mountains", description: "And stop at these picture-perfect lakes along the way.", image: "https://user-images.githubusercontent.com/61843976/112372950-6dd7f600-8cae-11eb-92fa-e3139fc02471.jpg")
    

Adventure.create(title:"Go on an African safari", location: "African Desert", description: "The incredible animals of Zimbabwe, Zambia, South Africa, Kenya, Tanzania, and beyond are calling your name! Time to get that flight booked.", image: "https://user-images.githubusercontent.com/61843976/112368138-c0aeaf00-8ca8-11eb-947d-05d4b839c2b6.jpg")
   

Adventure.create(title:"Experience the wildlife of the Galápagos Islands", location: "Galápagos Islands", description: "Bow down, humans. From blue-footed boobies to flamingos, Darwin’s finches to giant tortoises, the animals own the Galapagos. And we prefer it that way.", image: "https://user-images.githubusercontent.com/61843976/112372353-ae833f80-8cad-11eb-8dea-3c3d09ace7fe.jpg")
    

Adventure.create(title:"Go skydiving", location: "Everywhere!", description: "You can skydive all around the world, but Dubai seems like a suitable bucket list choice. It’s a rush like no other.", image: "https://user-images.githubusercontent.com/61843976/112373802-5f3e0e80-8caf-11eb-946c-c2f0f65984b3.jpg")
   

Adventure.create(title:"Visit Angkor Wat in Cambodia", location: "Cambodia", description: "As one of the largest and most famous temple sites in the world, Cambodia’s Angkor Wat is a must-visit on your tour through Southeast Asia.", image: "https://user-images.githubusercontent.com/61843976/112369188-e9837400-8ca9-11eb-9a4e-9f405b1e95ed.jpg")
    

Adventure.create(title:"Climb Mount Everest", location: "Himalayan mountains", description: "Scaling the highest mountain in the world is a challenge you need to tackle this year!", image: "https://user-images.githubusercontent.com/61843976/112373995-94e2f780-8caf-11eb-9b25-b5074a6bdf0c.jpg")
   

Adventure.create(title:"Hike the Camino de Santiago de Compostela trail", location: "Spain", description: "Yes, this year is all about embarking on journeys of self discovery, taking the path less travelled, and pushing your limits. And what better place to start than this pilgrimage route across northern Spain?", image: "https://user-images.githubusercontent.com/61843976/112370723-b80ba800-8cab-11eb-9b10-fd986dad7371.jpg")
  

Adventure.create(title:"Go kayaking in Antartica", location: "Antartica", description: "Imagine the swish of water as it passes your hull or the clack of brash ice against your paddle blade. Skim past penguin rookeries and seals sleeping on passing ice floes. Bumping through the ice, gliding across a glassy bay, these are experiences shared when sea kayaking in Antarctica - a very different side to the White Continent.", image: "https://user-images.githubusercontent.com/61843976/112371989-39b00580-8cad-11eb-8831-b145b91190f0.jpg")
    

Adventure.create(title:"Cruise the Amazon River", location: "South America", description: "South America, here you come! The Amazon and its tributaries flow through Peru, Bolivia, Venezuela, Colombia, Ecuador, and Brazil.", image: "https://user-images.githubusercontent.com/61843976/112369630-67e01600-8caa-11eb-900a-cd86b0243ce9.jpg")
    

Adventure.create(title:"Walk the Great Wall of China", location: "China", description: "This epic landmark is one of the New Seven Wonders of the World for a reason. Fly into Beijing and take it in the wall in all its glory.", image: "https://user-images.githubusercontent.com/61843976/112371234-60217100-8cac-11eb-98d1-ff82a54207d7.jpg")
   
Adventure.create(title:"Visit the Salt Flats in Bolivia", location: "Bolivia", 
description: "For millions of years the Pacific plate has been colliding with the Nazca plate, pushing up the Andean High plateau. At one such juncture, what is now in modern day Bolivia, it created an ancient inland salt sea that sat in a geological bathtub between two parallel high Andean ranges. In more recent transformations of the past thousands of years, it has been reduced to form the largest salt flat in the world at more than 4,000 square miles. Neighboring Lake Titicaca, which spans the Bolivian and Peruvian border, is also part of this ancient Inland sea, yet filled with water, making it the highest navigable lake in the world", image: "https://user-images.githubusercontent.com/61843976/112373493-040c1c00-8caf-11eb-9a81-4151a3c4fc94.jpg")
   


UserAdventure.create(user_id: User.find_by(userName: 'Rachelle').id, adventure_id: Adventure.find_by(title: "Participate in the Holi Festival in India").id, completed: true)
UserAdventure.create(user_id: User.find_by(userName: 'Rachelle').id, adventure_id: Adventure.find_by(title: "Walk the Great Wall of China").id, completed: true)
UserAdventure.create(user_id: User.find_by(userName: 'Evans').id, adventure_id: Adventure.find_by(title: "Take a gondola ride through the canals of Venice").id, completed: true)
UserAdventure.create(user_id: User.find_by(userName: 'Evans').id, adventure_id: Adventure.find_by(title: "Visit the Salt Flats in Bolivia").id, completed: false)

Comment.create(user_id: User.find_by(userName: 'Rachelle').id, adventure_id: Adventure.find_by(title: "Participate in the Holi Festival in India").id, comments: "mind blowing")
Comment.create(user_id: User.find_by(userName: 'Evans').id, adventure_id: Adventure.find_by(title: "Walk the Great Wall of China").id, comments: "this place was amazing!")










# Adventure.create(title:"Visit the Salt Flats in Bolivia", location: "Bolivia", 
# description: "For millions of years the Pacific plate has been colliding with the Nazca plate, pushing up the Andean High plateau. At one such juncture, what is now in modern day Bolivia, it created an ancient inland salt sea that sat in a geological bathtub between two parallel high Andean ranges. In more recent transformations of the past thousands of years, it has been reduced to form the largest salt flat in the world at more than 4,000 square miles. Neighboring Lake Titicaca, which spans the Bolivian and Peruvian border, is also part of this ancient Inland sea, yet filled with water, making it the highest navigable lake in the world").image.attched(io: File.open('public/images/Salt-flats-in-Bolivia.jpg'),
#     filename: 'Salt-flats-in-Bolivia.jpg',
#     content_type: 'application/jpg')