//
//  ParallaxViewCell.swift
//  ParallaxCell
//
//  Created by Artur on 09/02/2019.
//  Copyright © 2019 Artur. All rights reserved.
//

import UIKit

class ParallaxViewCell: UITableViewCell {


    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andName name: String){
        cellImage.image = image
        cellLabel.text = name
    }
    
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [ xMotion, yMotion ]
        
        cellImage.addMotionEffect( motionEffectGroup )
    }
}
