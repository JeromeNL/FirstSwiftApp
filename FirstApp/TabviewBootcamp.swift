//
//  TabviewBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 27/01/2023.
//

import SwiftUI

struct TabviewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self){ icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(Color.red)
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
        
//        TabView(selection: $selectedTab){
//
//            HomeView(selectTab: $selectedTab)
//                .tabItem{
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("Browe TAB")
//                .tabItem{
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile TAB")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
        
    }
}

struct TabviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.keyboard)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                .foregroundColor(.white)
                
                Button(action: {
                    selectTab = 2
                }, label:{
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                })
            }
            
            
           
        }
    }
}
