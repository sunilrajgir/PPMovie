//
//  MovieViewControllerModel.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

class MovieViewControllerModel {
    var movieList = [MovieCellModel]()
    init(movieList: [MovieCellModel]) {
        self.movieList = movieList
    }
}
