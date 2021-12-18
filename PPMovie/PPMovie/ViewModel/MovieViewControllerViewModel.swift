//
//  MovieViewModel.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation

enum ScreenStatus {
    case loader
    case networkError
    case serverError
    case success
}

protocol MovieViewModelDelegate: NSObject {
    func screenStatusChanged(status: ScreenStatus)
}

class MovieViewControllerViewModel {
    let networtkService:APIServiceProtocol
    var movieList = [MovieCellModel]()
    weak var delegate: MovieViewModelDelegate?
    var screenStatus : ScreenStatus = .loader {
        didSet {
            screenStatusChanged()
        }
    }
    init(networtkService: APIServiceProtocol) {
        self.networtkService = networtkService
    }

    func getData(completionBlock: (()->Void)) {
        networtkService.fetchData(url: "abc") { [weak self](data, error) in
            if let data = data {
                self?.processData(data: data)
            }
        }
    }

    private func processData(data: Movie) {
        movieList =  data.results.map{MovieCellModel(movieEntity: $0)}
    }

    func screenStatusChanged() {
        delegate?.screenStatusChanged(status: screenStatus)
    }
}
