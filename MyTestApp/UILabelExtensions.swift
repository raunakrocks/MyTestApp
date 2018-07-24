//
//  UILabelExtensions.swift
//  MyTestApp
//
//  Created by Raunak Talwar on 24/07/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    public convenience init(font: UIFont, textColor: UIColor? = nil, backgroundColor: UIColor? = nil, text: String? = nil) {
        self.init()
        self.font = font
        if let textColor = textColor {
            self.textColor = textColor
        }
        if let backgroundColor = backgroundColor {
            self.backgroundColor = backgroundColor
        }
        self.text = text
    }
}
