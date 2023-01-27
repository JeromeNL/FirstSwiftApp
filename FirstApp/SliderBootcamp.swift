//
//  SliderBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10.0
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.1f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
//                onEditingChanged: { () in
//                    color = .green
//                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .padding(50)
            .tint(.red)
        }
    }
        
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
