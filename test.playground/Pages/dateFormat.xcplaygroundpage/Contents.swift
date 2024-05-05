import Foundation


let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy.MM.dd"
dateFormatter.locale = Locale.current
print(dateFormatter.string(from: Date()))

