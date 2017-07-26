import UIKit

class Colors {
    
    // MARK: - Custom colors
    
    class func blue() -> UIColor {
        return colorize(hex: 0x303F9F)
    }
    
    class func lightBlue() -> UIColor {
        return colorize(hex: 0x5FA7F6)
    }
    
    class func yellow() -> UIColor {
        return colorize(hex: 0xFFC107)
    }
    
    class func black() -> UIColor {
        return colorize(hex: 0x212121)
    }
    
    class func gray() -> UIColor {
        return colorize(hex: 0xC1C1C1)
    }
}

func colorize (hex: Int, alpha: Double = 1.0) -> UIColor {
    let red = Double((hex & 0xFF0000) >> 16) / 255.0
    let green = Double((hex & 0xFF00) >> 8) / 255.0
    let blue = Double((hex & 0xFF)) / 255.0
    let color: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha:CGFloat(alpha) )
    return color
}
