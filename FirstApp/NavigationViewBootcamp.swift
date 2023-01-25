//
//  NavigationViewBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 25/01/2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    var Title:String = "All Inboxes"
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                
                NavigationLink("Hello, world",
                    destination: MyOtherScreen())
                
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle(Title)
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
        }
    }
}

struct MyOtherScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green screen!")
                //.navigationBarHidden(true)
                .navigationBarItems(
                    leading: Image(systemName: "person.fill")
                    , trailing:
                        NavigationLink(
                            destination:
                        MyOtherScreen()
                    , label: {
                        Image(systemName: "gear")
                    }))
            
            VStack{
                Button("BACK", action: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                NavigationLink("Click here", destination: Text("3rd screen"))
            
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
