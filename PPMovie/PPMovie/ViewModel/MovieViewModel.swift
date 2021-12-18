//
//  MovieViewModel.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

class MovieViewModel {
    let networtkService:NetworkManagerProtocol

    var movieList = [Result]()
    init(networtkService: NetworkManagerProtocol) {
        self.networtkService = networtkService
    }

    func getData(completionBlock: (()->Void)) {
        networtkService.fetchData(url: "abc") { [weak self](data, error) in
            if let results = data?.results {
                self?.movieList = results
            }
        }
    }
}
