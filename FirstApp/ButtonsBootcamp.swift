//
//  ButtonsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct ButtonsBootcamp: View {
    @State var title: String = "default"
    
    var body: some View {
        VStack {
            Text(title)
            
            Button("Knopje", action: {
                self.title = "Knopje pressed"
            })
            .accentColor(Color.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label:{
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 100, alignment:
                            .center)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
                
            })
            
            Button(action:{
                self.title = "button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
    
    struct ButtonsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            ButtonsBootcamp()
        }
    }
}
