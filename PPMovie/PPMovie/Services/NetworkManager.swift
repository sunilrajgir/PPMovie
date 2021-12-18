//
//  NetworkManager.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

protocol NetworkManagerProtocol {
    func fetchData(url: String, completionBlock:((_ data:Movie?, _ error: Error?)-> Void))
}

struct NetworkManager: NetworkManagerProtocol{
    func fetchData(url: String, completionBlock:((_ data:Movie?, _ error: Error?)-> Void)) {
        let jsonData = JSON.data(using: .utf8)!
        let movie: Movie = try! JSONDecoder().decode(Movie.self, from: jsonData)
        completionBlock(movie,nil)
    }
}

let JSON = """
{
  "dates": {
    "maximum": "2021-12-23",
    "minimum": "2021-11-05"
  },
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/VlHt27nCqOuTnuX6bku8QZapzO.jpg",
      "genre_ids": [
        28,
        12,
        878,
        14,
        35,
        18
      ],
      "id": 634649,
      "original_language": "en",
      "original_title": "Spider-Man: No Way Home",
      "overview": "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
      "popularity": 11147.352,
      "poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
      "release_date": "2021-12-15",
      "title": "Spider-Man: No Way Home",
      "video": false,
      "vote_average": 8.8,
      "vote_count": 836
    },
    {
      "adult": false,
      "backdrop_path": "/eENEf62tMXbhyVvdcXlnQz2wcuT.jpg",
      "genre_ids": [
        878,
        28,
        12
      ],
      "id": 580489,
      "original_language": "en",
      "original_title": "Venom: Let There Be Carnage",
      "overview": "After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.",
      "popularity": 9995.218,
      "poster_path": "/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg",
      "release_date": "2021-09-30",
      "title": "Venom: Let There Be Carnage",
      "video": false,
      "vote_average": 7.2,
      "vote_count": 4635
    },
    {
      "adult": false,
      "backdrop_path": "/7ajHGIAYNMiIzejy1LJWdPrcAx8.jpg",
      "genre_ids": [
        28,
        35,
        80,
        53
      ],
      "id": 512195,
      "original_language": "en",
      "original_title": "Red Notice",
      "overview": "An Interpol-issued Red Notice is a global alert to hunt and capture the world's most wanted. But when a daring heist brings together the FBI's top profiler and two rival criminals, there's no telling what will happen.",
      "popularity": 3608.636,
      "poster_path": "/wdE6ewaKZHr62bLqCn7A2DiGShm.jpg",
      "release_date": "2021-11-04",
      "title": "Red Notice",
      "video": false,
      "vote_average": 6.8,
      "vote_count": 2067
    },
    {
      "adult": false,
      "backdrop_path": "/5RuR7GhOI5fElADXZb0X2sr9w5n.jpg",
      "genre_ids": [
        16,
        35,
        10751,
        14
      ],
      "id": 568124,
      "original_language": "en",
      "original_title": "Encanto",
      "overview": "The tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia, in a magical house, in a vibrant town, in a wondrous, charmed place called an Encanto. The magic of the Encanto has blessed every child in the family with a unique gift from super strength to the power to heal—every child except one, Mirabel. But when she discovers that the magic surrounding the Encanto is in danger, Mirabel decides that she, the only ordinary Madrigal, might just be her exceptional family's last hope.",
      "popularity": 2595.206,
      "poster_path": "/4j0PNHkMr5ax3IA8tjtxcmPU3QT.jpg",
      "release_date": "2021-11-24",
      "title": "Encanto",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 344
    },
    {
      "adult": false,
      "backdrop_path": "/1Wlwnhn5sXUIwlxpJgWszT622PS.jpg",
      "genre_ids": [
        16,
        35,
        10751
      ],
      "id": 585245,
      "original_language": "en",
      "original_title": "Clifford the Big Red Dog",
      "overview": "As Emily struggles to fit in at home and at school, she discovers a small red puppy who is destined to become her best friend. When Clifford magically undergoes one heck of a growth spurt, becomes a gigantic dog and attracts the attention of a genetics company, Emily and her Uncle Casey have to fight the forces of greed as they go on the run across New York City. Along the way, Clifford affects the lives of everyone around him and teaches Emily and her uncle the true meaning of acceptance and unconditional love.",
      "popularity": 2364.029,
      "poster_path": "/ygPTrycbMSFDc5zUpy4K5ZZtQSC.jpg",
      "release_date": "2021-11-10",
      "title": "Clifford the Big Red Dog",
      "video": false,
      "vote_average": 7.5,
      "vote_count": 597
    },
    {
      "adult": false,
      "backdrop_path": "/mFbS5TwN95BcSEfiztdchLgTQ0v.jpg",
      "genre_ids": [
        28,
        18,
        36
      ],
      "id": 617653,
      "original_language": "en",
      "original_title": "The Last Duel",
      "overview": "King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire, Jacques Le Gris, by challenging him to a duel.",
      "popularity": 1928.088,
      "poster_path": "/zjrJE0fpzPvX8saJXj8VNfcjBoU.jpg",
      "release_date": "2021-10-13",
      "title": "The Last Duel",
      "video": false,
      "vote_average": 7.6,
      "vote_count": 970
    },
    {
      "adult": false,
      "backdrop_path": "/lyvszvJJqqI8aqBJ70XzdCNoK0y.jpg",
      "genre_ids": [
        28,
        12,
        18,
        14,
        878
      ],
      "id": 524434,
      "original_language": "en",
      "original_title": "Eternals",
      "overview": "The Eternals are a team of ancient aliens who have been living on Earth in secret for thousands of years. When an unexpected tragedy forces them out of the shadows, they are forced to reunite against mankind’s most ancient enemy, the Deviants.",
      "popularity": 1899.653,
      "poster_path": "/uaEIEIw9Y7DsvbWWMbG9ySjNF73.jpg",
      "release_date": "2021-11-03",
      "title": "Eternals",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 1437
    },
    {
      "adult": false,
      "backdrop_path": "/upOi9aVqPPky7Ba4GsiyFdjc82I.jpg",
      "genre_ids": [
        37,
        28,
        53
      ],
      "id": 887767,
      "original_language": "en",
      "original_title": "Last Shoot Out",
      "overview": "Soon after a newlywed learns that her husband had her father shot down, she flees from the Callahan ranch in fear. She's rescued by a gunman who safeguards her at a remote outpost as he staves off her husband's attempts to reclaim his bride.",
      "popularity": 1444.653,
      "poster_path": "/pvEtPxotI3POlVPvNxgrHJuDXfe.jpg",
      "release_date": "2021-12-03",
      "title": "Last Shoot Out",
      "video": false,
      "vote_average": 6.8,
      "vote_count": 38
    },
    {
      "adult": false,
      "backdrop_path": "/r2GAjd4rNOHJh6i6Y0FntmYuPQW.jpg",
      "genre_ids": [
        12,
        28,
        53
      ],
      "id": 370172,
      "original_language": "en",
      "original_title": "No Time to Die",
      "overview": "Bond has left active service and is enjoying a tranquil life in Jamaica. His peace is short-lived when his old friend Felix Leiter from the CIA turns up asking for help. The mission to rescue a kidnapped scientist turns out to be far more treacherous than expected, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.",
      "popularity": 1397.389,
      "poster_path": "/iUgygt3fscRoKWCV1d0C7FbM9TP.jpg",
      "release_date": "2021-09-29",
      "title": "No Time to Die",
      "video": false,
      "vote_average": 7.5,
      "vote_count": 2584
    },
    {
      "adult": false,
      "backdrop_path": "/uWGPC7j70LE64nbetxQGSSYJO53.jpg",
      "genre_ids": [
        53,
        10752
      ],
      "id": 762433,
      "original_language": "en",
      "original_title": "Zeros and Ones",
      "overview": "Called to Rome to stop an imminent terrorist bombing, a soldier desperately seeks news of his imprisoned brother — a rebel with knowledge that could thwart the attack. Navigating the capital's darkened streets, he races to a series of ominous encounters to keep the Vatican from being blown to bits.",
      "popularity": 919.265,
      "poster_path": "/1ALGmaXQSLQsaefjeu0kHfzFoWD.jpg",
      "release_date": "2021-11-18",
      "title": "Zeros and Ones",
      "video": false,
      "vote_average": 5.5,
      "vote_count": 74
    },
    {
      "adult": false,
      "backdrop_path": "/lzWHmYdfeFiMIY4JaMmtR7GEli3.jpg",
      "genre_ids": [
        878,
        12
      ],
      "id": 438631,
      "original_language": "en",
      "original_title": "Dune",
      "overview": "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.",
      "popularity": 909.779,
      "poster_path": "/d5NXSklXo0qyIYkgV94XAgMIckC.jpg",
      "release_date": "2021-09-15",
      "title": "Dune",
      "video": false,
      "vote_average": 7.9,
      "vote_count": 4783
    },
    {
      "adult": false,
      "backdrop_path": "/4JEx2BXhOzuN9pCQcnPSWwCiF0W.jpg",
      "genre_ids": [
        16,
        35,
        10751
      ],
      "id": 785545,
      "original_language": "en",
      "original_title": "Shaun the Sheep: The Flight Before Christmas",
      "overview": "Shaun's seasonal excitement turns to dismay when a farmhouse raid to get bigger stockings for the flock inadvertently leads to Timmy going missing. Can Shaun get Timmy back before he becomes someone else’s present?",
      "popularity": 717.431,
      "poster_path": "/1eh6Yv6bAU2ghHxP1zgUlMfaOR3.jpg",
      "release_date": "2021-12-03",
      "title": "Shaun the Sheep: The Flight Before Christmas",
      "video": false,
      "vote_average": 7,
      "vote_count": 21
    },
    {
      "adult": false,
      "backdrop_path": "/4gKxQIW91hOTELjY5lzjMbLoGxB.jpg",
      "genre_ids": [
        28,
        53,
        878
      ],
      "id": 763164,
      "original_language": "en",
      "original_title": "Apex",
      "overview": "Ex-cop Thomas Malone is serving a life sentence for a crime he didn’t commit. He is offered a chance at freedom if he can survive a deadly game of Apex, in which six hunters pay for the pleasure of hunting another human on a remote island. He accepts, and once he arrives, all hell breaks loose.",
      "popularity": 725.679,
      "poster_path": "/chTkFGToW5bsyw3hgLAe4S5Gt3.jpg",
      "release_date": "2021-11-12",
      "title": "Apex",
      "video": false,
      "vote_average": 5.5,
      "vote_count": 280
    },
    {
      "adult": false,
      "backdrop_path": "/akwg1s7hV5ljeSYFfkw7hTHjVqk.jpg",
      "genre_ids": [
        16,
        35,
        12,
        10751
      ],
      "id": 459151,
      "original_language": "en",
      "original_title": "The Boss Baby: Family Business",
      "overview": "The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.",
      "popularity": 737.598,
      "poster_path": "/kv2Qk9MKFFQo4WQPaYta599HkJP.jpg",
      "release_date": "2021-07-01",
      "title": "The Boss Baby: Family Business",
      "video": false,
      "vote_average": 7.7,
      "vote_count": 1654
    },
    {
      "adult": false,
      "backdrop_path": "/pKgfWzxOpvGV3MQ0kLjLdjKAzUe.jpg",
      "genre_ids": [
        18,
        80
      ],
      "id": 785538,
      "original_language": "pt",
      "original_title": "7 Prisioneiros",
      "overview": "An impoverished teen seeking to escape the clutches of a human trafficker must weigh living up to his moral code against his struggle to survive.",
      "popularity": 615.528,
      "poster_path": "/5svMKCGnR6Yvj8wxldvDvgUi0Jk.jpg",
      "release_date": "2021-10-22",
      "title": "7 Prisoners",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 141
    },
    {
      "adult": false,
      "backdrop_path": "/kbOB9DGl8qwhDRcXOmXfmcmadeD.jpg",
      "genre_ids": [
        18,
        53
      ],
      "id": 645886,
      "original_language": "en",
      "original_title": "The Unforgivable",
      "overview": "A woman is released from prison after serving a sentence for a violent crime and re-enters a society that refuses to forgive her past.",
      "popularity": 857.773,
      "poster_path": "/gPQM1zqqsm6Lw1tHF41BwbmOkya.jpg",
      "release_date": "2021-11-24",
      "title": "The Unforgivable",
      "video": false,
      "vote_average": 7.8,
      "vote_count": 457
    },
    {
      "adult": false,
      "backdrop_path": "/tutaKitJJIaqZPyMz7rxrhb4Yxm.jpg",
      "genre_ids": [
        16,
        35,
        10751,
        10402
      ],
      "id": 438695,
      "original_language": "en",
      "original_title": "Sing 2",
      "overview": "Buster and his new cast now have their sights set on debuting a new show at the Crystal Tower Theater in glamorous Redshore City. But with no connections, he and his singers must sneak into the Crystal Entertainment offices, run by the ruthless wolf mogul Jimmy Crystal, where the gang pitches the ridiculous idea of casting the lion rock legend Clay Calloway in their show. Buster must embark on a quest to find the now-isolated Clay and persuade him to return to the stage.",
      "popularity": 649.637,
      "poster_path": "/aWeKITRFbbwY8txG5uCj4rMCfSP.jpg",
      "release_date": "2021-12-01",
      "title": "Sing 2",
      "video": false,
      "vote_average": 7.8,
      "vote_count": 27
    },
    {
      "adult": false,
      "backdrop_path": "/gg2w8QYf6o5elN95RHtikQaVIsc.jpg",
      "genre_ids": [
        28,
        18,
        80
      ],
      "id": 592508,
      "original_language": "hi",
      "original_title": "Sooryavanshi",
      "overview": "A fearless, faithful albeit slightly forgetful Mumbai cop, Veer Sooryavanshi, the chief of the Anti-Terrorism Squad in India pulls out all the stops and stunts to thwart a major conspiracy to attack his city.",
      "popularity": 679.557,
      "poster_path": "/8p3mhjyLjHKtaAv8tFKfvEBtir0.jpg",
      "release_date": "2021-11-05",
      "title": "Sooryavanshi",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 31
    },
    {
      "adult": false,
      "backdrop_path": "/wfrfxivLOBtGMC98tIr2LSOeKSe.jpg",
      "genre_ids": [
        16,
        12,
        35,
        10751
      ],
      "id": 639721,
      "original_language": "en",
      "original_title": "The Addams Family 2",
      "overview": "The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters.",
      "popularity": 507.282,
      "poster_path": "/ld7YB9vBRp1GM1DT3KmFWSmtBPB.jpg",
      "release_date": "2021-10-01",
      "title": "The Addams Family 2",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 642
    },
    {
      "adult": false,
      "backdrop_path": "/3NiiRAKt2L5bUuAvSOkv6Yn7u6T.jpg",
      "genre_ids": [
        28,
        12,
        878
      ],
      "id": 624860,
      "original_language": "en",
      "original_title": "The Matrix Resurrections",
      "overview": "Plagued by strange memories, Neo's life takes an unexpected turn when he finds himself back inside the Matrix.",
      "popularity": 483.891,
      "poster_path": "/xLNtaLaHudIzOqdEZ7R3lcDLrQQ.jpg",
      "release_date": "2021-12-16",
      "title": "The Matrix Resurrections",
      "video": false,
      "vote_average": 8.3,
      "vote_count": 24
    }
  ],
  "total_pages": 82,
  "total_results": 1633
}
"""

