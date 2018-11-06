//
//  CustomOverlay.swift
//  Swift4Onboarding
//
//  Created by 神崎泰旗 on 2018/10/16.
//  Copyright © 2018年 taiki. All rights reserved.
//

import Foundation
import SwiftyOnboard

class CustomOverlay: SwiftyOnboardOverlay {
    
    @IBOutlet weak var skip: UIButton!
    @IBOutlet weak var buttonContinue: UIButton!
    @IBOutlet weak var contentControl: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        buttonContinue.layer.borderColor = UIColor.white.cgColor
        buttonContinue.layer.borderWidth = 1
        buttonContinue.layer.cornerRadius = buttonContinue.bounds.height / 2
    }
    
    class func instanceFromNib() -> UIView {
        return UINib(nibName: "CustomOverlay", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
    
}
