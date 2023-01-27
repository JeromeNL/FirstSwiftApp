//
//  ColorPickerBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = Color.gray
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
        ColorPicker("select color",
            selection: $backgroundColor,
            supportsOpacity: false
            
        )
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        .padding()
        
            
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
