//
//  DemoURL.swift
//  Cassini
//
//  Created by Marc FAMILARI on 1/30/17.
//  Copyright © 2017 Marc FAMILARI. All rights reserved.
//

import Foundation

class DemoURL {
    
    static let NASA = [
    "Cassini"   : "https://saturn.jpl.nasa.gov/legacy/multimedia/images/artwork/images/IMG004628.jpg",
    "Earth"     : "https://www.nasa.gov/centers/goddard/images/content/638831main_globe_east_2048.jpg",
    "Saturn"    : "https://www.nasa.gov/sites/default/files/images/394218main_PIA11667_full.jpg"
    ]
    
    static func NASAImageNamed(imageName: String?) -> NSURL? {
        if let urlstring = NASA[imageName ?? ""] {
            return NSURL(string: urlstring)
        } else {
            return nil
        }
    }
}
