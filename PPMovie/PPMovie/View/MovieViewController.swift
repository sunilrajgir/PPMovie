//
//  MovieViewController.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import UIKit

class MovieViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel : MovieViewControllerViewModel!
    convenience init(viewModel: MovieViewControllerViewModel) {
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
        setupTableView()
        viewModel.getData {[weak self] in
            if let self = self {
                self.bindData()
            }
        }
    }

    private func showLoader() {

    }

    private func hideLoader() {

    }


    private func bindData() {
        tableView.reloadData()
    }

    private func setupTableView() {
        tableView.register(UINib(nibName: MovieCell.identifier, bundle: nil), forCellReuseIdentifier: MovieCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension MovieViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.movieList.count > 0 ? 1 : 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.movieList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MovieCell.identifier, for: indexPath) as? MovieCell {
            let movie = viewModel.movieList[indexPath.row]
            cell.configure(movie: movie)
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
}

extension MovieViewController: MovieViewModelDelegate {
    func screenStatusChanged(status: ScreenStatus) {
        // show loader, error, tableView on the basis of status
    }
}
