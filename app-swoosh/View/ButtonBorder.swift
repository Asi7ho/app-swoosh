//
//  ButtonBorder.swift
//  app-swoosh
//
//  Created by Yann Debain on 14/12/2017.
//  Copyright © 2017 Debain Yann. All rights reserved.
//

import UIKit

class ButtonBorder: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}
