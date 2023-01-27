//
//  DatePickerBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from:
                                                    DateComponents(year: 2020)) ?? Date()
    
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter{
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    
    var body: some View {
        
        //DatePicker("Select date", selection: $selectedDate)
//        DatePicker("Select date", selection: $selectedDate,
//                   displayedComponents: [.date]
//        )
        VStack {
            Text("SELECTED DATE IS: ")
            Text(dateFormatter.string(from: selectedDate).description)
                .font(.title)
            DatePicker("Select date", selection: $selectedDate, in:
                        startingDate...endingDate, displayedComponents: [.date]
            )
                .tint(Color.red)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
            )
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
