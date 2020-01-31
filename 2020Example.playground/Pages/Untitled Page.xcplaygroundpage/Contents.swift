import Foundation

//MARK: - 수유등 QR코드 code 파싱
var str = """
{
"mac":"E0:55:14:FD:1B:01",
"type":"light"

}
"""


struct Light: Codable {
  let mac: String
  let type: String
}

let data = str.data(using: .utf8)!
let decoder = JSONDecoder()
let lightData = try! decoder.decode(Light.self, from: data)


print(lightData.mac, lightData.type)

//MARK: - 특정문자열 제거
let macStr = "E0:55:14:FD:1B:01"
let macStr2 = macStr.replacingOccurrences(of: ":", with: "")
print(macStr2)




extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}

//MARK: -개월 구하기
let dateString:String = "20190101"
let dateFormatter = DateFormatter()

dateFormatter.dateFormat = "yyyyMMdd"
//dateFormatter.timeZone = NSTimeZone(name: "Ko") as TimeZone?
dateFormatter.locale = Locale(identifier: "ko_kr")
//dateFormatter.timeZone = TimeZone(abbreviation: "KST")


//현재 날짜
let todayDate = Date()

func getMonthsDifference(date1: Date, date2: Date) -> Int {
  
  /* 해당년도에 12를 곱해서 총 개월수를 구하고 해당 월을 더 한다. */
  
  let month1 = date1.get(.year) * 12 + date1.get(.month)
  let month2 = date2.get(.year) * 12 + date2.get(.month)
  
  return month2 - month1
}

getMonthsDifference(date1: babyDate, date2: todayDate)


let calendar = Calendar.current
let components2 = calendar.dateComponents([.hour, .minute], from: todayDate)
let hour = components2.hour ?? 0
let minute = components2.minute ?? 0

print(hour)
print(minute)




// MARK: Way 1

let components = babyDate.get(.day, .month, .year)
if let day = components.day, let month = components.month, let year = components.year {
    print("day: \(day), month: \(month), year: \(year)")
}

// MARK: Way 2

print("day: \(babyDate.get(.day)), month: \(babyDate.get(.month)), year: \(babyDate.get(.year))")


//
//
//
//
//
//
//
//
//
//
//
//
//
//let str2 = "<7d0c3007 57df01>"
//
////MARK: - 특정문자열 제거
//let resultStr = str2.trimmingCharacters(in: ["<",">"])
//
////MARK: - 공백 제거
//let resultStr2 = resultStr.replacingOccurrences(of: " ", with: "")
//
////MARK: - 마지막 문자 제거
//let endIndex = resultStr2.index(resultStr2.endIndex, offsetBy: -2)
//let truncated = resultStr2.substring(to: endIndex)
//
////MARK:
//String(truncated.reversed()).uppercased()
