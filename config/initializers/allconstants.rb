INFO = {
  'Hawaii' => {
    'meta' => "Hawaii, TopTierTraveling, Oahu, Maui, Big Island, Wailea Beach Marriott Resort",
    'first_image' => 'oahu2.jpg',
    'second_image' => 'big3.jpg',
    'location' => [20.5114, -156.4964],
    'description'=> "The fresh, floral air energizes you. The warm, tranquil waters refresh you.
    The breathtaking, natural beauty renews you. Look around. There’s no place on earth like Hawaii.
    Whether you're a new visitor or returning, our six unique islands offer distinct experiences that
    will entice any traveler. We warmly invite you to explore our islands and discover your ideal
    travel experience.",
    'from' => '~ From the State of Hawaii',
    'currency'=> 'USD',
    'cities'=> [{
        'name' => 'Oahu',
        'location' => [-157.9833, 21.4667],
        'images' => ['oahu1.jpg', 'oahu2.jpg', 'oahu3.jpg'],
        'description'=> 'On the island of Oahu, ride the waves in Waikiki where surfing was born
        or catch a big-wave surf meet on Oahu’s famed North Shore. Between sunrise and sunset, you’ll have
        hours to explore the hottest farm to table restaurants, browse the latest designer and local fashions,
        check out the urban art scene in Chinatown or stroll into Hawaii’s history at Iolani Palace.',
        'activities' => [{
          'name'=> 'Diamond Head',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Polynesian Cultural Center',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'USS Memorials',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Iolani Palace',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Manoa Falls',
          'cost'=> 100,
          'nights'=> 1,
        },{
          'name'=> 'Shangri La',
          'cost'=> 100,
          'nights'=> 1
        }]
      },{
        'name' => 'Maui',
        'location' => [-156.3333, 20.8000],
        'images'=> [
          'maui1.jpg', 'maui2.jpg', 'maui3.jpg'
        ],
        'description'=> 'Known as the “Valley Isle,” Maui is dotted with quaint towns, artist communities and
        local favorites that have been around for generations. Head to Wailuku for pastries from a “mom and pop”
        bakery, or head to Lahaina for a taste of Maui’s famed farm to table cuisine. From shimmering beaches and
        sacred Iao Valley to migrating humpback whales and sunset on Haleakala, it’s not surprising Maui was voted
        the “Best Island” for 19 years.',
        'activities' => [{
          'name'=> 'Haleakalā National Park',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Kula Botanical Garden',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'King Kamehameha Clubhouse',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Bailey House Museum',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Holy Ghost Catholic Church',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Kaahumanu Church',
          'cost'=> 100,
          'nights'=> 1
        }]
      },{
        'name' => 'Big Island',
        'location' => [-155.5000, 19.5667],
        'images'=> [
          'big1.jpg', 'big2.jpg', 'big3.jpg'
        ],
        'description'=> 'Hawaii Island is the youngest and largest island in the Hawaiian chain, but it’s remarkable
        for more than just its size. Picture yourself visiting Kilauea, one of the most active volcanoes in the world,
        or talk story with a cultural demonstrator at Puuhonua o Honaunau, a historic park that was once a place of
        refuge. Whether you’re walking on a black sand beach, snorkeling with manta rays, horseback riding in Waimea
        or sailing along the Kona Coast, Hawaii, the Big Island is your island for adventure.',
        'activities' => [{
          'name'=> 'Hawaiʻi Volcanoes National Park',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Rainbow Falls',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Coconut Island',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Lava Tree State Monument',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Liliuokalani Park and Gardens',
          'cost'=> 100,
          'nights'=> 1
        },{
          'name'=> 'Kohala (Volcano)',
          'cost'=> 100,
          'nights'=> 1
        }]
      }],
    'packages' => [{
        'name' => 'Hawaii Island: Hilton Waikoloa Village® Value Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Hawaii-Island/Offers/HAWBIGHILTONWVPKG2009052',
        'cost' => '5 Nights from $719 per person',
        'image'=> 'costcotravel.png',
        'included'=> 'bigisland'
      },{
        'name' => 'Oahu: AULANI, A Disney Resort & Spa Spring Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Oahu/Offers/HAWHNLAULANI20141107',
        'cost' => '5 Nights from $1,055 per person',
        'image'=> 'costcotravel.png',
        'included'=> 'oahu'
      },{
        'name' => 'Maui: The Ritz-Carlton, Kapalua Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Maui/Offers/HAWOGGRITZKAPALUA20131218',
        'cost' => '5 Nights from $1,405 per person',
        'image'=> 'costcotravel.png',
        'included'=> 'maui'
      },{
        'name' => 'Oahu and Maui 2-Island Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Offers/HAWHNLOGG20140307',
        'cost' => '>7 Nights from $',
        'image'=> 'costcotravel.png',
        'included'=> 'oahu,maui'
      },{
        'name' => 'Oahu and Hawaii Island Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Offers/HAWHNLKOA20140313',
        'cost' => '>7 Nights from $',
        'image'=> 'costcotravel.png',
        'included'=> 'oahu,bigisland'
      },{
        'name' => 'Maui and Oahu: 2-Island Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Oahu/Offers/HAWOAHTURTLEBAYBC20140121',
        'cost' => '>7 Nights from $',
        'image'=> 'costcotravel.png',
        'included'=> 'oahu,maui'
      },{
        'name' => 'Maui and Oahu: 2-Island Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Offers/HAWKOAHNL20140313',
        'cost' => '>7 Nights from $',
        'image'=> 'costcotravel.png',
        'included'=> 'oahu,maui'
      },{
        'name' => 'Maui and Hawaii Island: 2-Island Package',
        'link'=> 'http://www.costcotravel.com/Vacation-Packages/hawaii/Offers/HAWOGGKOA20140313',
        'cost' => '>7 Nights from $',
        'image'=> 'costcotravel.png',
        'included'=> 'maui,bigisland'
      }]
  },
  'Italy' => {
    'meta' => "Italy, Hotel Pierre, Hotel Delle Nazioni, Papadopoli Venezia, Rome, Florence, Venice",
    'first_image' => 'rome3.jpg',
    'second_image' => 'florence2.jpg',
    'location' => [41.9000, 12.4833],
    'description'=> "Popularly known as the world's 'living art gallery', Italy is an exotic place of both
    art and architectural masterpieces created throughout history, attracting hundreds of thousands of travelers
    each year. You can visit Rome to look for antique treasures from several of the world's most famous
    painters. Florence is awash in history with ancient churches, villas, and palazzos. Every turn in Venice is a
    piece of history, whether it's a 13th century church, renaissance piazza, or monument.",
    'from' => '~ From the Country of Italy',
    'currency'=> 'EUR',
    'cities'=> [{
      'name' => 'Rome',
      'location' => [12.5000,41.9000],
      'images' => ['rome1.jpg', 'rome2.jpg', 'rome3.jpg'],
      'description'=> 'Rome is the capital city of Italy and is Italy`s most populous city. It is
      located in the central-western portion of the Italian peninsula, on the Tiber river. Rome`s history as a
      city spans over two and a half thousand years, as one of the founding cities of Western Civilization.
      Today, Rome is a modern, cosmopolitan city, and the third most-visited tourist destination in the European Union.',
      'activities' => [{
        'name'=> 'Rome City Bike Tour',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Vatican',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Ancient Colosseum',
        'cost'=> 100,
        'nights'=> 1
        }]
      },{
      'name' => 'Florence',
      'location' => [11.2500,43.7833],
      'images'=> [
      'florence3.jpg', 'florence2.jpg', 'florence1.jpg'
      ],
      'description'=> 'The birthplace of the Renaissance, Florence is possibly the most beautifully preserved
      and artistically rich city in the world.  Here, artistic treasures and architectural masterpieces of the past blend
      with ancient streets lined with elegant boutiques, peaceful parks, streetside cafes offering steaming hot expresso
      and fresh biscotti, unforgettable dining establishments and breathtaking views at every turn.',
      'activities' => [{
        'name'=> 'Cupola del Brunelleschi',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'The Basilica of San Miniato al Monte',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Piazzale Michelangelo',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Piazza della Signoria',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> "Giotto's Bell Tower (Campanile di Giotto)",
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Basilica di Santa Croce',
        'cost'=> 100,
        'nights'=> 1
        }]
      },{
      'name' => 'Venice',
      'location' => [12.3358,45.4375],
      'images'=> [
      'venice1.jpg', 'venice2.jpg', 'venice3.jpg'
      ],
      'description'=> "Venice is a city in northern Italy, the capital of the region Veneto and is world famous
      for its canals. It is built on an archipelago of 118 islands formed by approximately 150 canals in a shallow
        lagoon. The islands are connected by around 400 bridges. Transportation within the city is by foot or on water.
        The classical Venetian boat is the gondola, although it is now mostly used for tourists. Most Venetians now travel by motorised waterbuses (vaporetti) which ply regular routes along
        the major canals and between the city's islands.",
      'activities' => [{
        'name'=> 'Gondola Ride',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Grand Canal',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> "Saint Mark's Basilica",
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> "St. Mark's Square",
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Campanile',
        'cost'=> 100,
        'nights'=> 1
        },{
        'name'=> 'Teatro Malibran',
        'cost'=> 100,
        'nights'=> 1
        }]
      }],
    'packages' => [{
      'name' => 'Taste of Rome and Tuscany: Your Way',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Offers/EURROMFLRPKG20080324',
      'cost' => '7 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'rome,florence'
      },{
      'name' => 'Venice, Florence and Rome: Your Way',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Offers/EURVCEFLRROM20081219',
      'cost' => '9 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'rome,florence,venice'
      },{
      'name' => 'Sorrento, Rome, Florence and Venice: Your Way',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Offers/EURRROROMFLRVCE20120817',
      'cost' => '12 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'rome,florence,venice'
      },{
      'name' => 'Rome: Your Way Package',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Italy/Offers/EURROMYOURWAY20081031',
      'cost' => '3 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'rome'
      },{
      'name' => 'Rome, Florence and Paris',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Offers/EURROMFLRPARDAY20110801',
      'cost' => '10 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'rome,florence'
      },{
      'name' => 'Florence and Venice: Your Way Package',
      'link'=> 'http://www.costcotravel.com/Vacation-Packages/europe/Offers/EURFLRVCEPKG20090909',
      'cost' => '7 Nights',
      'image'=> 'costcotravel.png',
      'included'=> 'florence,venice'
      }]
  },
  'Random' => {
    'description' => "Not sure where to go? Let us surprise you with a random selections of one of our destination packages!"
  }
}
