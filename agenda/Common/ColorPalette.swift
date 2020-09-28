//
//  ColorPalette.swift
//  agenda
//
//  Created by Lucas Flores on 27/09/20.
//  Copyright © 2020 lsflores. All rights reserved.
//

import Foundation
import UIKit

protocol ColorPaletteProtocol {
    func color() -> UIColor
}

enum ColorPalette: String, ColorPaletteProtocol {
    case gainsboro
    case lightSteelBlue
    case cadetBlue
    case charcoal
    case rasingBlack
    
    func color() -> UIColor {
        return UIColor(named: self.rawValue)!
    }
}
