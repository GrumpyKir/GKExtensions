//
//  UIColor+Hex.swift
//  Trade Union
//
//  Created by  Кирилл on 1/15/19.
//  Copyright © 2019 AppCraft. All rights reserved.
//

import UIKit

public extension UIColor {
    
    convenience init(hex: String) {
        self.init(hex: hex, alpha: 1.0)
    }
    
    convenience init(hex: String, alpha: CGFloat) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let red, green, blue: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (red, green, blue) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (red, green, blue) = (int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (red, green, blue) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (red, green, blue) = (1, 1, 0)
        }
        
        self.init(
            red: (CGFloat(red) / 255),
            green: (CGFloat(green) / 255),
            blue: (CGFloat(blue) / 255),
            alpha: alpha
        )
    }
    
}
