//
//  ToggleBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isOn: Bool = false
    
    
    var body: some View {
        
        
        ZStack {
            var bgColor = isOn ? Color.green : Color.red
            
            
            Toggle(
                isOn: $isOn,
                label: {
                    Text("Label")
                }
            )
        }
        
        .toggleStyle(SwitchToggleStyle(tint: Color.red))
    }
        
}


struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
