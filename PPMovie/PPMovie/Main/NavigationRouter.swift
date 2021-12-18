//
//  NavigationRouter.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation
import UIKit

final class NavigationRouter {
    let viewFactory: ViewFactoryProtocol
    let navigationController: UINavigationController
    init(viewFactory: ViewFactoryProtocol, navigationController: UINavigationController) {
        self.viewFactory = viewFactory
        self.navigationController = navigationController
    }

    func pushViewController(_ viewController: UIViewController, _ animation: Bool = false){
        navigationController.pushViewController(viewController, animated: animation)
    }

    private func setRootViewController(_ viewController: UIViewController, _ animation: Bool = false) {
        navigationController.setViewControllers([viewController], animated: animation)
        SceneDelegate.shared.window?.rootViewController = navigationController
        SceneDelegate.shared.window?.makeKeyAndVisible()
    }

    func openMainViewController() {
        setRootViewController(viewFactory.createView(viewType: .main))
    }


}
