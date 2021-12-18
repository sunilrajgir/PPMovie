//
//  MovieViewModel.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

class MovieViewModel {
    let networtkService:APIServiceProtocol

    var movieList = [Result]()
    init(networtkService: APIServiceProtocol) {
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
