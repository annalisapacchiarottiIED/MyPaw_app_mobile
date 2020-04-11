//
//  CalendarViewController.swift
//  MyPaw_app
//
//  Created by Beatrice Buran on 11/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import SwiftUI

struct CalendarViewController: View {
    @Binding var isPresented: Bool
    
    @ObservedObject var rkManager: CalendarManager
    
    var body: some View {
        Group {
            RKWeekdayHeader(rkManager: self.rkManager)
            Divider()
            List {
                ForEach(0..<numberOfMonths()) { index in
                    RKMonth(isPresented: self.$isPresented, rkManager: self.rkManager, monthOffset: index)
                }
                Divider()
            }
        }
    }
    
    func numberOfMonths() -> Int {
        return rkManager.calendar.dateComponents([.month], from: rkManager.minimumDate, to: RKMaximumDateMonthLastDay()).month! + 1
    }
    
    func RKMaximumDateMonthLastDay() -> Date {
        var components = rkManager.calendar.dateComponents([.year, .month, .day], from: rkManager.maximumDate)
        components.month! += 1
        components.day = 0
        
        return rkManager.calendar.date(from: components)!
    }
}

struct CalendarViewController_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CalendarViewController(isPresented: .constant(false), rkManager: RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*365), mode: 0))
            CalendarViewController(isPresented: .constant(false), rkManager: RKManager(calendar: Calendar.current, minimumDate: Date(), maximumDate: Date().addingTimeInterval(60*60*24*32), mode: 0))
                .environment(\.colorScheme, .dark)
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}
