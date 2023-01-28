//
//  OnAppearBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start"
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform:{
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "Appeared!"
                })
            })
            .onDisappear(perform: {
                myText = "Ending Text"
            })
            .navigationTitle("On appear bootcamp")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
