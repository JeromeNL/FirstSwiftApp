//
//  StateBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Welcome!"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20){
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Green"){
                        backgroundColor = Color.green
                        title = "Green!"
                        count += 1
                    }
                    
                    Button("Red"){
                        backgroundColor = Color.red
                        title = "Red!"
                        count -= 1
                    }
                }
            }.foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
