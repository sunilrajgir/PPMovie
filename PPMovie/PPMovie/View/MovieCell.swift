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

    func configure(movie: Result) {
        movieName.text = movie.title
        movieRating.text = "Rating: \(movie.voteAverage) "
        let completeURl = "https://image.tmdb.org/t/p/w500" + "\(movie.posterPath)"
        if let url = URL(string: completeURl) {
            ImageDownloaderService.fetchImage(url: url) { [weak self](image, returnUrl) in
                if returnUrl == url {
                    self?.movieImageView.image = image
                }
            }
        }
    }
    
}
