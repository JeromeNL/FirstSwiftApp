//
//  TernaryBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 25/01/2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button"){
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Start" : "End")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 100 : 50,
                    height: isStartingState ? 200 : 100)
            
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
