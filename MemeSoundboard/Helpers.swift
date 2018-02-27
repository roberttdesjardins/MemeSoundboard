//
//  Border.swift
//  MemeSoundboard
//
//  Created by Robert Desjardins on 2018-02-27.
//  Copyright © 2018 Robert Desjardins. All rights reserved.
//

import UIKit
import Foundation

func makeBorderImage(button: UIButton) {
    button.layer.borderWidth = 5
    button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.cornerRadius = 10
    button.clipsToBounds = true
}

func makeBorderText(button: UIButton) {
    button.titleLabel?.textAlignment = NSTextAlignment.center
    button.layer.borderWidth = 5
    button.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    button.layer.cornerRadius = 10
    button.layer.backgroundColor = #colorLiteral(red: 0.7960784314, green: 0.8078431373, blue: 1, alpha: 0.4703820634)
    button.clipsToBounds = true
}

