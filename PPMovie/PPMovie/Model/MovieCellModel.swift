//
//  MovieCellModel.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

struct MovieCellModel {
    let name: String
    let imageUrl: String
    let rating: String
    init(movieEntity: Result) {
        self.name = movieEntity.title
        self.imageUrl = "https://image.tmdb.org/t/p/w500" + "\(movieEntity.posterPath)"
        self.rating = "Rating: \(movieEntity.voteAverage)"
    }
}
