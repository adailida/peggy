//
//  DateExtension.swift
//  Peggy
//
//  Created by Alex D on 24/08/15.
//  Copyright © 2015 Alex D. All rights reserved.
//

import Foundation

extension NSDate {
    
    class func from(year:Int, month:Int, day:Int) -> NSDate {
        let c = NSDateComponents()
        c.year = year
        c.month = month
        c.day = day
        
        let gregorian = NSCalendar(identifier:NSCalendarIdentifierGregorian)
        let date = gregorian!.dateFromComponents(c)
        return date!
    }
    
    class func parse(dateStr:String, format:String="yyyy-MM-dd") -> NSDate {
        let dateFmt = NSDateFormatter()
        dateFmt.timeZone = NSTimeZone.defaultTimeZone()
        dateFmt.dateFormat = format
        return dateFmt.dateFromString(dateStr)!
    }

}