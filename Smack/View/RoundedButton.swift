//
//  RoundedButton.swift
//  Smack
//
//  Created by Phoenix Trejo on 6/20/18.
//  Copyright © 2018 Phoenix Trejo. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    // This allows us to change from storyboard sidebar
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
}
