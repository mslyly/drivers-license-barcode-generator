import Foundation

class DataElementFormatter {
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US")
        formatter.dateFormat = "MMddyyyy"
        
        return formatter
    }
    
    static func formatString(_ string: String, length: Int) -> String {
        return String(string.prefix(length))
    }
    
    static func formatDate(date: Date) -> String {
        return dateFormatter.string(from: date)
    }
    
    static func formatPostalCode(postalCode: String) -> String {
        return postalCode.padding(toLength: 9, withPad: "0", startingAt: 0)
    }
}
