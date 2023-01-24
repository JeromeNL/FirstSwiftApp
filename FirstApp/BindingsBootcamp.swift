//
//  BindingsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct BindingsBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor,
                           title: $title)
            }
        }
    }
}

struct ButtonView: View{
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = Color.blue
    
    var body: some View{
        Button(action:{
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Gedrukt!"
        }, label:{
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}


struct BindingsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingsBootcamp()
    }
}
