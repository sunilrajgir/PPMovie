//
//  ImageDownloaderService.swift
//  PPMovie
//
//  Created by Sunil Kumar on 18/12/21.
//

import Foundation
import UIKit

protocol ImageDownloaderServiceProtocol {

}
struct ImageDownloaderService {
    static func fetchImage(url:URL, completionBlock:@escaping((_ image: UIImage?, _ url: URL)->Void)) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if error != nil {
                    completionBlock(nil,url)
                } else {
                    let image = UIImage(data: data!)
                    completionBlock(image,url)
                }
            }
        }.resume()
    }
}
