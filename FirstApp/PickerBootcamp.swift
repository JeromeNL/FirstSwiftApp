//
//  PickerBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        Picker(
            selection: .constant(1),
            label:
                HStack {
                    Text("Filter: ")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                .shadow(radius: 10,
                        x: 0, y: 10)
            ,
            content: {
                Text("1").tag(1)
                Text("2").tag(2)
            })
        .pickerStyle(MenuPickerStyle())
        
//        VStack {
//            HStack{
//                Text("Age: ")
//                Text(selection)
//            }
//
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100){index in
//                        Text("\(index)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(index)")
//
//                    }
//                })
//            //.background(Color.gray.opacity(0.3))
//            .pickerStyle(WheelPickerStyle())
//}

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
