//
//  ImageViewController.swift
//  Cassini
//
//  Created by Marc FAMILARI on 1/27/17.
//  Copyright © 2017 Marc FAMILARI. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    var imageURL: NSURL? {
        didSet {
            image = nil
            fetchImage()
        }
    }
    
    private func fetchImage() {
        if let url = imageURL {
            if let imageData = NSData(contentsOf: url as URL) {
                image = UIImage(data: imageData as Data)
            }
        }
    }
    
//    @IBOutlet weak var scrollView: UIScrollView! {
//        didSet {
//            scrollView.contentSize = imageView.frame.size
//        }
//    }
    
    private var scrollView = UIScrollView()
    
    private var imageView = UIImageView()
    
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            scrollView.contentSize = imageView.frame.size
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.addSubview(imageView)
        self.view = self.scrollView
        imageURL = NSURL(string: "http://boingboing.net/features/cassini/cassini6.jpg")
    }
}
