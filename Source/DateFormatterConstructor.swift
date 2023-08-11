//
//  DateFormatterConstructor.swift
//  DateFormatterConstructor
//
//  Created by IDAP Developer on 11.08.2023.
//  Copyright © 2019 IDAP. All rights reserved.
//

import Foundation

public extension DateFormatter {
    
    enum DateFormat {
        case time(withOnly: TimeUnit)
        case fullTime(format: HoursQuantity)
        case date(format: DateType)
        case fullTimeAndDate
        
        var getFormat: String {
            switch self {
            case .time(withOnly: let withOnly):
                switch withOnly {
                case .hours:
                    return "HH"
                case .hoursAndMinutes:
                    return "HH:mm"
                case .minutes:
                    return "mm"
                case .minutesAndSeconds:
                    return "mm:ss"
                case .seconds:
                    return "ss"
                }
            case .fullTime(format: let format):
                switch format {
                case .twelve:
                    return "hh:mm:ss"
                case .twentyFour:
                    return "HH:mm:ss"
                }
            case .date(format: let format):
                switch format {
                case .pointNumDate:
                    return "dd.MM.yyyy"
                case .slashNumDate:
                    return "dd/MM/yyyy"
                case .shortWordDate:
                    return "dd MMM yyyy"
                case .fullWordDate:
                    return "dd MMMM yyyy"
                }
            case .fullTimeAndDate:
                return "dd MMMM yyyy HH:mm:ss"
            }
        }
    }
    
    enum TimeUnit {
        case hours
        case hoursAndMinutes
        case minutes
        case minutesAndSeconds
        case seconds
    }
    
    enum HoursQuantity {
        case twelve
        case twentyFour
    }
    
    enum DateType {
        case pointNumDate
        case slashNumDate
        case shortWordDate
        case fullWordDate
    }
    
    static func customDateFormatter(
        format: DateFormat? = .fullTimeAndDate,
        locale: Locale? = .current,
        timeZone: TimeZone? = .current
    )
        -> DateFormatter
    {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = locale
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = format?.getFormat
        
        return dateFormatter
    }
}
