import Foundation
import UIKit

extension String {
    
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
    
    func image() -> UIImage {
        return UIImage(named: self) ?? UIImage()
    }
    
    func urlEncoded() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
    }
    
    func toDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YYYY-MM-dd'T'HH:mm:ssZZZ"
        dateFormatter.locale = Locale.init(identifier: "en_US_POSIX")
        return dateFormatter.date(from: self)
    }
}
