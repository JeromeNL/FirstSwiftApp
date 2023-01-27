//
//  DarkmodeBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct DarkmodeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing: 20){
                    Text("This color is primary")
                        .foregroundColor(.primary)
                    Text("This color is secondary")
                        .foregroundColor(.secondary)
                    Text("This color is black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                    Text("This color is red")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("Avansrood"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? Color.blue : Color.green)
                }
            }
            .navigationTitle("DarkModeBootcamp")
        }
    }
}

struct DarkmodeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DarkmodeBootcamp()
                .preferredColorScheme(.light)
            DarkmodeBootcamp()
                .preferredColorScheme(.dark)
        }
       
    }
}
