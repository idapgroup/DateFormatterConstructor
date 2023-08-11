# DateFormatterConstructor

This is simple DateFormatter extension which allows you to create a DateFormatter instance with a specific date pattern in one line.

So instead of writing:
```swift
let formatter = DateFormatter()
formatter.locale = .current
formatter.timeZone = .current
formatter.dateFormat = "HH:mm:ss"
```
you write:
```swift
let formatter = DateFormatter.customDateFormatter(format: .fullTime(format: .twentyFour))
```
You can also optionally select the locale and timezone:
```swift
let formatter = DateFormatter.customDateFormatter(format: DateFormatter.DateFormat, locale: Locale(identifier: "en-US"), timeZone: .gmt)
```
or leave them as default as
```swift
.current
```
if you do not specify a format, the ```.fullTimeAndDate``` format will be used by default:
```swift
let formatter = DateFormatter.customDateFormatter()
```

| Available format templates | Representation |
| -------------------------- | -------------- |
| .time(withOnly: .hours)  | 23 |
| .time(withOnly: .hoursAndMinutes)  | 23:59 |
| .time(withOnly: .minutes)  | 59 |
| .time(withOnly: .minutesAndSeconds) | 59:59 |
| .time(withOnly: .seconds) | 59 |
| .fullTime(format: .twelve) | 11:59:59 |
| .fullTime(format: .twentyFour) | 23:59:59 |
| .date(format: .pointNumDate) | 11.08.2023 |
| .date(format: .slashNumDate) | 11/08/2023 |
| .date(format: .shortWordDate) | 11 Aug 2023 |
| .date(format: .fullWordDate) | 11 August 2023 |
| .fullTimeAndDate | 11 August 2023 23:59:59 |

## Requirements

iOS 9+. Swift 3.0.

## Installation

DateFormatterConstructor is available through CocoaPods. To install it, simply add the following line to your Podfile:
```ruby
pod "DateFormatterConstructor"
```
DateFormatterConstructor is available through Carthage. To install it, simply add the following line to your Cartfile:
```ruby
github "idapgroup/DateFormatterConstructor"
```
## License

TableViewCellRegistrar is available under the New BSD license. See the LICENSE file for more info.
