# ``DateFormatterConstructor``

This is simple DateFormatter extension which allows you to create a DateFormatter instance with a specific date pattern in one line.

## Overview

So instead of writing:
```swift
let formatter = DateFormatter()
formatter.locale = .current
formatter.timeZone = .current
formatter.dateFormat = "HH:mm:ss"
```
you write:
```swift
let formatter = DateFormatter.custom(format: .fullTime(format: .twentyFour))
```
You can also optionally select the locale and timezone:
```swift
let formatter = DateFormatter.custom(format: DateFormatter.DateFormat, locale: Locale(identifier: "en-US"), timeZone: .gmt)
```
or leave them as default as
```swift
.current
```
if you do not specify a format, the 
```swift
.fullTimeAndDate
``` 
format will be used by default:
```swift
let formatter = DateFormatter.custom()
```
