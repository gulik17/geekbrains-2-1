//
//  CornerRadiusViewController.swift
//  Lucky
//
//  Created by Администратор on 20.04.2020.
//  Copyright © 2020 Home. All rights reserved.
//

import UIKit

class RoundView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}

class RoundButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}
