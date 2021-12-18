//
//  ViewFactory.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation
import UIKit

protocol ViewFactoryProtocol {
    func createView(viewType: ViewType) -> UIViewController
}

enum ViewType {
    case main
}

class ViewFactory: ViewFactoryProtocol{
    func createView(viewType: ViewType) -> UIViewController {
        switch viewType {
        case .main:
            return createMainViewController()
        }
    }

    private func createMainViewController() -> UIViewController {
        let networkService = APIService()
        let viewModel = MovieViewControllerViewModel(networtkService: networkService)
        let viewController = MovieViewController(viewModel: viewModel)
        viewModel.delegate = viewController
        viewController.title = "Movie Lsit"
        return viewController
    }
}
