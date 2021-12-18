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
    var movieList = [Result]()
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
            if let results = data?.results {
                self?.movieList = results
            }
        }
    }

    func screenStatusChanged() {
        delegate?.screenStatusChanged(status: screenStatus)
    }
}
