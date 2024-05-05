import Foundation

//print((16 + 4) == 20 ? 14 + 6 : 16)

let imageUrl = "hasdlfje/asdflaserfjwa/sadflawjekr/1_e3424rwerf.jpg"
print(String(imageUrl.split(separator: "/").last?.split(separator: ".").first ?? ""))
