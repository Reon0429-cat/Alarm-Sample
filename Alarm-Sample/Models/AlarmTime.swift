//
//  AlarmTime.swift
//  Alarm-Sample
//
//  Created by 大西玲音 on 2021/06/14.
//

import Foundation

final class AlarmTime: NSObject, NSCoding {
    
    var date: Date
    var uuidString: String
    var label: String
    var sound: Bool
    var snooze: Bool
    var isOn: Bool
    var weeks: [String]
    var repeatLabel: String
    
    override init() {
        self.date = Date()
        self.uuidString = UUID().uuidString
        self.label = "アラーム"
        self.sound = true
        self.snooze = true
        self.isOn = true
        self.weeks = []
        self.repeatLabel = "しない"
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.date, forKey: "date")
        aCoder.encode(self.uuidString, forKey: "uuidString")
        aCoder.encode(self.label, forKey: "label")
        aCoder.encode(self.sound, forKey: "sound")
        aCoder.encode(self.snooze, forKey: "snooze")
        aCoder.encode(self.isOn, forKey: "isOn")
        aCoder.encode(self.weeks, forKey: "weeks")
        aCoder.encode(self.repeatLabel, forKey: "repeatLabel")
    }
    
    required init?(coder aDecoder: NSCoder) {
        date = aDecoder.decodeObject(forKey: "date") as! Date
        uuidString = aDecoder.decodeObject(forKey: "uuidString") as! String
        label = aDecoder.decodeObject(forKey: "label") as! String
        sound = aDecoder.decodeBool(forKey: "sound")
        snooze = aDecoder.decodeBool(forKey: "snooze")
        isOn = aDecoder.decodeBool(forKey: "isOn")
        weeks = aDecoder.decodeObject(forKey: "weeks") as! [String]
        repeatLabel = aDecoder.decodeObject(forKey: "repeatLabel") as! String
    }
    
}
