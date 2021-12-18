//
//  MovieViewController.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import UIKit

class MovieViewController: UIViewController {

    var viewModel : MovieViewModel!
    convenience init(viewModel: MovieViewModel) {
        self.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getData {
            
        }
    }
}
