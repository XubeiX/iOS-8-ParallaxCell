//
//  DataSource.swift
//  ParallaxCell
//
//  Created by Artur on 09/02/2019.
//  Copyright © 2019 Artur. All rights reserved.
//

import Foundation

class DataSource {
    static let Instance = DataSource()
    
    init() {}
    
    private let cellData = [ CellData(image: #imageLiteral(resourceName: "models"), description: "Models"), CellData(image: #imageLiteral(resourceName: "bike"), description: "Bikes"), CellData(image: #imageLiteral(resourceName: "code"), description: "Codes") ]
    
    func getCellData() -> [CellData] {
        return cellData
    }
}
