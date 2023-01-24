//
//  ExtractSubviewsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack(){
            Color.cyan.edgesIgnoringSafeArea(.all)
            
            // content
            VStack {
//                Spacer()
//                    .frame(width: .infinity, height: 300)
//
                ZStack {
                    GeometryReader(){ geometry in
                        ScrollView(.horizontal){
                            HStack(){
                                MyItem(title: "oranges", count: 5,
                                       color: Color.yellow)
                                
                                MyItem(title: "pears", count: 20,
                                       color: Color.green)
                                
                                MyItem(title: "apples", count: 2,
                                       color: Color.red)
                            }
                            .frame(width: geometry.size.width)
                            .background(Color.white)
                        }.frame(width: geometry.size.width, height:
                                    geometry.size.height)
                    }
                }
            }
            
        }
    }
    
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
