//
//  CellData.swift
//  ParallaxCell
//
//  Created by Artur on 09/02/2019.
//  Copyright © 2019 Artur. All rights reserved.
//

import Foundation
import UIKit

class CellData {
    public private(set) var image: UIImage
    public private(set) var description: String
    
    init(image: UIImage, description: String) {
        self.image = image
        self.description = description
    }
}
