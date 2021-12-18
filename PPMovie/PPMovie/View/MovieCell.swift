//
//  MovieCell.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import UIKit

class MovieCell: UITableViewCell {
    static let identifier = "MovieCell"
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        movieName.text = ""
        movieRating.text = ""
        imageView?.image = nil
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func configure(movie: MovieCellModel) {
        movieName.text = movie.name
        movieRating.text = movie.rating
        if let url = URL(string: movie.imageUrl) {
            ImageDownloaderService.fetchImage(url: url) { [weak self](image, returnUrl) in
                if returnUrl == url {
                    self?.movieImageView.image = image
                }
            }
        }
    }
    @IBAction func starAction(_ sender: UIButton) {

    }

}
